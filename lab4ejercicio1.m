%Ronaldo Rafael Arias Parada-1151674
clear all; %borra variables
clc; %borra pantalla
r=1*ones(30,1);%asigna un valor a r de una matriz de 30x1
phi=linspace(0,2*pi,30);%genera un espaciado lineal
[r, phi] = meshgrid(r,phi);%genera matrices x y para grafias 3d
x=r.*cos(phi); % declara x
y=r.*sin(phi);% declara y
z=repmat(linspace(0,2,30),30,1); % declara z
surfl(x,y,z); %genera una superficies
shading interp %graficos de sombras
colormap(blue) %color

axis equal %iguala ejes
xlabel('x'); ylabel('y');zlabel('z')
title('Superficie cilíndrica')