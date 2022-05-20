

%RONALDO RAFAEL ARIAS PARADA-1151674
clear all; %limpiamos pantalla
clc;
x=0: pi/100:2*pi;% se crea un vector de valores x que van de 0 a 2π.
y=sin(x);%Luego calcule el seno de estos valores.
y2=sin(x-.25);%asignando las coordenadas a la variable y2.
y3=sin(x-.5);%asignando las coordenadas a la variable y3.
plot(x,y,x,y2,x,y3);% se representa graficamente el resultado de la grafica del seno
legend('sin(x)','sin(x-.25)', 'sin(x-.5)');%asignando las etiquetas de los ejes.