
pkg load control;

clc;

num = [2]
den = [2,5,8,1]
kp = 1.75
ki = (kp/1.57)+0.5
kd = (kp*0.39125)+0.3
control = tf([kd,kp,ki],[1,0])
funcao = tf(num,den)
funcaocont = series(funcao,control)
mf = feedback(funcaocont,1)
figure(1)
step(mf)
