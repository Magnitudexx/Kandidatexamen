# python serial cwater
# Serial is not included with Python.
# It is a package that you'll need to install separately.
# >pip install pyserial (when internet connected)

import time
import serial
import numpy as np
import matplotlib.pyplot as plt
import datetime

###########################################################
# average definition
def average(V):
 avy=0.0
 aN=64.0
 for M in range(1,L): # stop at "65", loop at "65" is not executed
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

 coe=np.sqrt(1.0-S/St)
 beta=1.0/abs(beta)
 print(alpha,beta,coe)
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
nocoli = serial.Serial(port='/dev/ttyUSB0',baudrate=76200,parity=serial.PARITY_NONE,
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
#print(b2.decode('ascii'))
b1 = nocoli.readline() # from nocoli 'Measure Y/N'
K=len(b1)
b2=b1[0:K-1]
#print(b2.decode('ascii'))

nocoli.write(b'Y')
b1 = nocoli.readline()
K=len(b1)
b2=b1[0:K-1]
print(b2.decode('ascii'))

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
# timer0, scale=3/64,   64*(4*ADC+interval/0.005s)
for M in range(1,L): # stop at "L", loop at "L" is not executed
 adc = nocoli.read(2) # read (high,low)
 n = int.from_bytes(adc,byteorder='big')
 ay=np.append(ay,n)
 V[M]=float(n)

Vref = average(V)

###########################################################
second2=time.time()
print("time lapse=",second2-second1)

###########################################################
# (2) scale=2>8
dx=0.01
for N in range(1,11):
 for M in range(1,L):
  adc = nocoli.read(2) # read (high,low)
  n = int.from_bytes(adc,byteorder='big')
  ay=np.append(ay,n)
  V[M]=np.log(abs(float(n)-Vref))
 fitting(dx,V)
###########################################################
second2=time.time()
print("time lapse=",second2-second1)

aalpha=0.0
abeta=np.zeros(0,dtype=float)
acoe=0.0
###########################################################
# (3) scale=3/64, 10*64*(4*ADC+interval/0.005s)
# middle one to di-concentrate
dx=0.01
for N in range(1,11):
 for M in range(1,L):
  adc = nocoli.read(2) # read (high,low)
  n = int.from_bytes(adc,byteorder='big')
  ay=np.append(ay,n)
  V[M]=np.log(abs(float(n)-Vref))
 alpha,beta,coe = fitting(dx,V)

# print(alpha,beta,coe)
 aalpha=aalpha+alpha
 abeta=np.append(abeta,beta)
 acoe=acoe+coe
###########################################################
second2=time.time()
print("time lapse=",second2-second1)

###########################################################
# (4) scale=4>256, 10*64*(4*ADC+interval/0.02s)
dx=0.01
for N in range(1,11):
 for M in range(1,L):
  adc = nocoli.read(2) # read (high,low)
  n = int.from_bytes(adc,byteorder='big')
  ay=np.append(ay,n)
  V[M]=np.log(abs(float(n)-Vref))
 fitting(dx,V)
###########################################################
second2=time.time()
print("time lapse=",second2-second1)

###########################################################
# (5) scale=5>1024, 10*64*(4*ADC+interval/0.08s)
dx=0.01
for N in range(1,11):
 for M in range(1,L):
  adc = nocoli.read(2) # read (high,low)
  n = int.from_bytes(adc,byteorder='big')
  ay=np.append(ay,n)
  V[M]=np.log(abs(float(n)-Vref))
 fitting(dx,V)

###########################################################
second2=time.time()
print("time lapse=",second2-second1)

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

aalpha=aalpha*0.1
acoe=acoe*0.1
beta1=(abeta[1]+abeta[3]+abeta[5]+abeta[7]+abeta[9])/5.0
beta2=(abeta[2]+abeta[4]+abeta[6]+abeta[8])/4.0
print("concentration=",aalpha)
print("beta1=",beta1)
print("beta2=",beta2)
print("correlation coefficient=",acoe)
file2.write(str(aalpha)+' '+str(beta1)+' '+str(beta2)+' '+str(acoe)+'\n')
file2.close()

plt.plot(ay)
plt.show()

nocoli.close()  # close port
