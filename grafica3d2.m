
%RONALDO RAFAEL ARIAS PARADA-1151674
x=-2:0.1:2;%se asignan las coordenadas a x
y=-3:0.1:3;%se asignan las coordenadas a y
[X,Y]=meshgrid(x,y);%devuelve coordenadas de cuadrícula 2D basadas en las coordenadas que contienen 
% los vectores x e y. X es una matriz en la que cada fila es una copia de x, mientras que Y es una matriz
% en la que cada columna es una copia de y.
% La cuadrícula que representan las coordenadas X e Y tiene length(y) filas y length(x) columnas.
Z=X.^2-Y.^2;
mesh(X,Y,Z);
xlabel('X')%se agrega la etiqueta del eje x
ylabel('Y')%se agrega la etiqueta del eje y
zlabel('Z')%se agrega la etiqueta del eje z

