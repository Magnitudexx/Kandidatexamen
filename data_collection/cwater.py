# python serial cwater
# Serial is not included with Python.
# It is a package that you'll need to install separately.
# >pip install pyserial (when internet connected)

import time
import datetime
import serial
import numpy as np
import matplotlib.pyplot as plt

###########################################################
# average definition
def average(V):
 avy=0.0
 aN=64.0
 for M in range(1,L): # stop at "M=L", loop at "M=L" is not executed
  avy=avy+V[M]

 avy=avy/aN
 return avy
###########################################################
# fitting definition
def fitting(dx,V):
 aN=64.0

 avx=0.0
 avx2=0.0
 avy=0.0
 avxy=0.0
 x=0.0
 for M in range (1,65):
  x=x+dx
  avx=avx+x
  avx2=avx2+x*x
  avy=avy+V[M]
  avxy=avxy+x*V[M]

 avx=avx/aN
 avx2=avx2/aN
 avy=avy/aN
 avxy=avxy/aN

 beta=(avxy-avx*avy)/(avx2-avx*avx)
 alpha=avy-beta*avx

 S=0.0
 St=0.0
 x=0.0
 for M in range (1,65):
  x=x+dx
  S=S+(V[M]-alpha-beta*x)**2
  St=St+(V[M]-avy)**2

 coe=1.0-S/St
 beta=abs(beta)
 print('curve python=',alpha,beta,coe)
 file2.write(str(alpha)+' '+str(beta)+' '+str(coe)+'\n')
 return alpha,beta,coe
###########################################################
# pick measuring point
print("Pick measuring point \n(1) Sea \n(2) Nissan \n(3) Tap Water \n")
n = int(input("Pick (1-3):"))
opt = ["sea", "nissan", "tap_water"]
point = opt[n-1]

###########################################################
# connect cwater then do the following to find it
import serial.tools.list_ports
ports = serial.tools.list_ports.comports(include_links=False)
for port in ports :
    print(port.device)

# open and configure the serial connection
nocoli = serial.Serial(port='/dev/ttyUSB0',baudrate=9600,parity=serial.PARITY_NONE,
    stopbits=1,bytesize=8)
nocoli.flushInput()
nocoli.flushOutput()
time.sleep(0.1)

###########################################################
# initialize
second1=time.time()
date=datetime.datetime.now().date()
filename1='./data/'+ point + '/data_'+str(date)+'.dat'
filename2='./data/'+ point + '/value_'+str(date)+'.dat'
file1 = open(filename1, "w")
file2 = open(filename2, "w")
L=65
V=np.zeros(L,dtype = float)
ay=np.zeros(0,dtype=int)
alpha=0.0
beta=0.0
coe=0.0

###########################################################
# (0) first 64=reference
# timer0, scale=3/64,   50*(4*ADC+interval/0.01s)
for M in range(1,L): # stop at "L", loop at "L" is not executed
 adc = nocoli.read(2) # read (high,low)
 n = int.from_bytes(adc,byteorder='big')
 file1.write(str(M)+' '+str(n)+'\n')
 ay=np.append(ay,n)
 V[M]=float(n)

Vref = average(V)
print('Vmean python=',Vref)
# receive mega8535 results
adc = nocoli.read(2) # read (high,low)
a1 = int.from_bytes(adc,byteorder='big')
print('Vmean mega8535=',a1)

second2=time.time()
print("time lapse=",second2-second1)
###########################################################
# (1) scale=3/64, 2*64*(ADC+interval/0.01s)
# middle one to di-concentrate
dx=1.0
for N in range(1,3):
 for M in range(1,L):
  adc = nocoli.read(2) # read (high,low)
  n = int.from_bytes(adc,byteorder='big')
  file1.write(str(M)+' '+str(n)+'\n')
  ay=np.append(ay,n)
  V[M]=np.log(abs(float(n)-Vref))
 fitting(dx,V)

# receive mega8535 results
 adc = nocoli.read(2) # read (high,low)
 a1 = int.from_bytes(adc,byteorder='big')
 adc = nocoli.read(2) # read (high,low)
 a2 = int.from_bytes(adc,byteorder='big')
# print(a1,a2)
 alpha=a1+a2/256.0/256.0

 adc = nocoli.read(2) # read (high,low)
 a1 = int.from_bytes(adc,byteorder='big')
 adc = nocoli.read(2) # read (high,low)
 a2 = int.from_bytes(adc,byteorder='big')
# print(a1,a2)
 beta=a1+a2/256.0/256.0

 adc = nocoli.read(2) # read (high,low)
 a1 = int.from_bytes(adc,byteorder='big')
 adc = nocoli.read(2) # read (high,low)
 a2 = int.from_bytes(adc,byteorder='big')
# print(a1,a2)
 coe=2.0**a1*a2/256.0/256.0

 print('curve mega8535=',alpha,beta,coe)
 file2.write(str(alpha)+' '+str(beta)+' '+str(coe)+'\n')

second2=time.time()
print("time lapse=",second2-second1)
###########################################################
for J in range(1,500):
   adc = nocoli.read(2) # read (high,low)
   n = int.from_bytes(adc,byteorder='big')
   if n > 15000:   # max value of 10x10 bits ADC=10240
     break # NOCOLI 2^14 signal the end of one measurement run
   ay=np.append(ay,n)

#J=len(ay)
#for M in range(0,J):
# file1.write(str(ay[M])+'\n')
file1.close()

file2.close()

plt.plot(ay)
plt.show()

nocoli.close()  # close port
