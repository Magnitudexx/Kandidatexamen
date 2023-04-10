# python serial cwater
# Serial is not included with Python.
# It is a package that you'll need to install separately.
# >pip install pyserial (when internet connected)

import time
import datetime
import serial
import numpy as np
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt

###########################################################
# average definition
def average(V):
 avy=0.0
 aN=64.0
 for M in range(0,L):
  avy=avy+V[M]

 avy=avy/aN
 return avy
###########################################################
# curve fit function definition
def f(x, a, b):
    """Fit function y=f(x,p) with parameters p=(a,b). """
#    return a*np.exp(b*x)*(np.exp(b*x)-1.0)
    return a*(1.0-np.exp(-b*x))
###########################################################
# fitting definition
# 1st adc@0.005 sec, 2nd adc@0.005+dx...
def fitting(dx,V):
 L=64
 x=np.zeros(L,dtype = float)
 avy=0.0
 S=V[0]
 for M in range (0,L):
  x[M]=(M+1.0)*dx
  V[M]=V[M]-S
  avy=avy+V[M]
 avy=avy/float(M)

#call curve fit function
 popt, pcov = curve_fit(f,x,V,bounds=(0.0,[200.0, 60.0]),maxfev=1000)
 a, b = popt

 S=0.0
 St=0.0
 for M in range (0,L):
  y=a*(1.0-np.exp(-b*x[M]))
  S=S+(V[M]-y)**2
  St=St+(V[M]-avy)**2

 r2=1.0-S/St
# print("Fitting parameters are a=%g, b=%g, r2=%g" % (a,b,r2))
# file2.write(str(a)+' '+str(b)+' '+str(r2)+'\n')

#plotting
# import pylab
# yfitted = f(x, *popt)   # equivalent to f(x, popt[0], popt[1], popt[2])
# pylab.plot(x, V, 'o', label='data $y_i$')
# pylab.plot(x, yfitted, '-', label='fit $f(x_i)$')
# pylab.xlabel('x')
# pylab.legend()
# plt.show()

 return a,b,r2
###########################################################
# pick measuring point
opt = ["sea", "nissan", "tap_water", "other"]
print("Pick measuring point \n(1) " + opt[0]+" \n(2) "+ opt[1]+" \n(3) "+ opt[2]+" \n(4) " + opt[3] + " \n")
n = int(input("Pick (1-4):"))
if n == 4:
    name = input("Write name of other:")
    point = opt[n-1] + "/" + name
else:
    point = opt[n-1] + "/"
###########################################################

# connect cwater then do the following to find it
import serial.tools.list_ports
ports = serial.tools.list_ports.comports(include_links=False)
for port in ports :
    print(port.device)

# open and configure the serial connection
#nocoli = serial.Serial(port='COM3',baudrate=76200,parity=serial.PARITY_NONE,
#    stopbits=1,bytesize=8)
nocoli = serial.Serial(port=port.device,baudrate=76200,parity=serial.PARITY_NONE,
    stopbits=1,bytesize=8)
nocoli.flushInput()
nocoli.flushOutput()
time.sleep(0.1)

nocoli.write(b'Y') # send nocoli 'Y' to communicate
# 0.01 second delay
time.sleep(0.01)

# readline() reads up to one line, including the \n at the end

b1 = nocoli.readline() # return received by MCU
b2=b1[0:len(b1)-1] # get rid \n at the end
print(b2)
print(b2.decode('ascii'))
b1 = nocoli.readline() # from nocoli 'Measure Y/N'
K=len(b1)
b2=b1[0:K-1]
print(b2.decode('ascii'))

nocoli.write(b'Y')
b1 = nocoli.readline()
K=len(b1)
b2=b1[0:K-1]
print(b2.decode('ascii'))

###########################################################
# initialize
second1=time.time()
date=datetime.datetime.now().date()
filename1='./data/'+ point + 'data_'+str(date)+'.dat'
filename2='./data/'+ point + 'value_'+str(date)+'.dat'
file1 = open(filename1, "w")
file2 = open(filename2, "w")
L=64
V=np.zeros(L,dtype = float)
ay=np.zeros(0,dtype=int)

# G= polarity of the H2O electrodes
G=1.0
###########################################################
# (0) first 64=reference
# timer0, scale=3/64,   64*(ADC+interval/10msec)
for M in range(0,L): # stop at "L", loop at "L" is not executed
 adc = nocoli.read(2) # read (high,low)
 n = int.from_bytes(adc,byteorder='big')
 ay=np.append(ay,n)
 V[M]=float(n)
Vref = average(V)

a=0.0
b=0.0
r2=0.0
qa=np.zeros(4,dtype = float)
qb=np.zeros(4,dtype = float)
###########################################################
second2=time.time()
print("time lapse=",second2-second1)
second1=second2
###########################################################
# (1) timer0, scale=2/8, 10*64*(ADC+interval/1.25msec)
# 0.8150448799133301 is python counting
dx=0.8150448799133301/640.0

qr2=0.0
for N in range(0,10):
 for M in range(0,L):
  adc = nocoli.read(2) # read (high,low)
  n = int.from_bytes(adc,byteorder='big')
  ay=np.append(ay,n)
  V[M]=(-1.0)**(N+G)*float(n)
 (a,b,r2)=fitting(dx,V)
 print(a,b,r2)
 qa[0]=qa[0]+a
 qb[0]=qb[0]+b
 qr2=qr2+r2
print("Fitting confidence r2=%g" % (0.1*qr2))

second2=time.time()
print("time lapse=",second2-second1)
second1=second2
###########################################################
# (2) timer0, scale=3/64, 10*64*(ADC+interval/10msec)
dx=6.492251396179199/640.0

qr2=0.0
for N in range(0,10):
 for M in range(0,L):
  adc = nocoli.read(2) # read (high,low)
  n = int.from_bytes(adc,byteorder='big')
  ay=np.append(ay,n)
  V[M]=(-1.0)**(N+G)*float(n)
 (a,b,r2)=fitting(dx,V)
 print(a,b,r2)
 qa[1]=qa[1]+a
 qb[1]=qb[1]+b
 qr2=qr2+r2
print("Fitting confidence r2=%g" % (0.1*qr2))

second2=time.time()
print("time lapse=",second2-second1)
second1=second2
###########################################################
# (3) timer0, scale=4/256,  10*64*(ADC+interval/40msec)
dx=25.993299961090088/640.0

qr2=0.0
for N in range(0,10):
 for M in range(0,L):
  adc = nocoli.read(2) # read (high,low)
  n = int.from_bytes(adc,byteorder='big')
  ay=np.append(ay,n)
  V[M]=(-1.0)**(N+G)*float(n)
 (a,b,r2)=fitting(dx,V)
 print(a,b,r2)
 qa[2]=qa[2]+a
 qb[2]=qb[2]+b
 qr2=qr2+r2
print("Fitting confidence r2=%g" % (0.1*qr2))

second2=time.time()
print("time lapse=",second2-second1)
second1=second2
###########################################################
# (4) timer0, scale=5/1024, 10*64*(4*ADC+interval/160msec)
dx=103.998286485672/640.0

qr2=0.0
for N in range(0,10):
 for M in range(0,L):
  adc = nocoli.read(2) # read (high,low)
  n = int.from_bytes(adc,byteorder='big')
  ay=np.append(ay,n)
  V[M]=(-1.0)**(N+G)*float(n)
 (a,b,r2)=fitting(dx,V)
 print(a,b,r2)
 qa[3]=qa[3]+a
 qb[3]=qb[3]+b
 qr2=qr2+r2
print("Fitting confidence r2=%g" % (0.1*qr2))

second2=time.time()
print("time lapse=",second2-second1)
###########################################################
for J in range(1,500):
   adc = nocoli.read(2) # read (high,low)
   n = int.from_bytes(adc,byteorder='big')
   if n > 15000:   # max value of 10x10 bits ADC=10240
     break # NOCOLI 2^14 signal the end of one measurement run
   ay=np.append(ay,n)

J=len(ay)
for M in range(0,J):
 file1.write(str(ay[M])+'\n')
file1.close()

qa=qa*0.1
qb=qb*0.1
file2.write(str(qa[0])+' '+str(qa[1])+' '+str(qa[2])+\
        ' '+str(qa[3])+' '+str(1.0/qb[0])+' '+str(1.0/qb[1])+\
        ' '+str(1.0/qb[2])+' '+str(1.0/qb[3])+'\n')
file2.close()

plt.plot(ay)
plt.show()

nocoli.close()  # close port
