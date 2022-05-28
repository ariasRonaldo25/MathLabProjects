%Ronaldo Rafael Arias Parada-1151674
clear all; %borra variables
clc; %borra pantalla
t=linspace(0,3,2000); %crea vector de tiempo
x1= 4*sin(5*t);%primera función
x2=8*sin(3*t);%segunda función
x3= x1+x2; %construye x3 como la suma de x1 y x2
plot(t, x1,t,x2,t,x3);% grafica las funciones x1,x2 y x3
legend('x_1','x_2','x_3');