clc
clear all

pkg load control
pkg load symbolic

m=1000;
b=50;

num=[1];
den=[1 10 20];
G=tf(num,den);

kp1=10;
ki1=50;
kd1=0;

kp2=10;
ki2=80;
kd2=0;

C1=pid(kp1,ki1,kd1);
C2=pid(kp2,ki2,kd2);

Heq1=feedback(C1G,1);
Heq2=feedback(C2G,1);
step(Heq1,'r',Heq2,'b')
grid on
