
%RONALDO RAFAEL ARIAS PARADA-1151674
clear all; %limpio pantalla.
clc;

A=[1 2 3;4 5 6];
B=[1 2; 3 4; 5 6];
C=A*B %Producto entre matrices
T=inv(C)^2 %cuadrado de la inversa de C
Tt=T' %Transpuesta de T