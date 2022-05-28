%Ronaldo Rafael Arias Parada-1151674
clear all;%borra variables 
clc; %borra pantalla
syms x; %crea una variable symbol x
x=linspace(1,5,100);%genera un espaciado lineal
y=log10(x.^2-1)-log10(x);%declara y
y1=diff(y); %obtiene la diferencia entre y1 y
y2=diff(y1);%obtiene la diferencia entre y2 y1
x1=linspace(-2,5,99); %genera un espaciado lineal
x2=linspace(-2,5,98); %genera un espaciado lineal
plot(x,y,x1,y1,x2,y2)%genera las graficas
legend('y','y1','y2')%genera las etiquetas
title('Derivadas de Orden superior')
xlabel('Ejex')
ylabel('y, dy/dx, d^2y/dx^2')
grid on