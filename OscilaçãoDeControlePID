clc
clear all

pkg load control
pkg load symbolic

num=[10];
den=[1 6 11 6 0];
G=tf(num,den);

kp=1;
ki=0;
kd=0;
#ki=1.5;
#kd=0.375;

C=pid(kp,ki,kd);

t=0:0.1:20;
H=feedback(C*G,1);
step(H,t)
