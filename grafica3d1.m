

%RONALDO RAFAEL ARIAS PARADA-1151674
t=0:0.1:6*pi;% se crea un vector de valores x que van de 0 a 2π.
x=sin(t);%calcule el seno de estos valores.
y=cos(t);%calcule el coseno de estos valores.
z=t;%se asigna a z t.
plot3(x,y,z,'b')%representar graficamente.
grid on% agrega las líneas de cuadrículas aparecen en las marcas de graduación.
xlabel('x'); ylabel('y'); zlabel('z')%se le agregan las etiquetas a los ejes.