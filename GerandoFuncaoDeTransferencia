clc
clear all

pkg load control

num = [1];
#den = poly([1 1])
den =[1 1 0]

F = tf(num,den)
H=feedback(F,1)
nyquist(F)
