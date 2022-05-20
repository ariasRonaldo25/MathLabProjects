

%%RONALDO RAFAEL ARIAS PARADA-1151674
%Limpiamos la pantalla y mostramos el nombre del método
clear
clc
disp('Metodo de Newton Raphson')

%Introducimos la función,la derivada, el punto de inicio,así como
%porcentaje de error
f=input('Introduzca la funcion f(x):','s');
d=input('Introduzca la derivada de la funcion dy/dx:','s');
pi=input('Introduzca el punto de inicio:');
err=input('Porcentaje de error:');

%Graficamos la función
ezplot(f)
grid on

%cambiamos las expresiones ingresadas de string a funciones
d=inline(d);
f=inline(f);

ea=100;
j=0;
while ea>err
 %Aproximamos la raiz con la fórmula correpondiente
 xi=pi-(f(pi)/d(pi));
 %Calculamos el porcentaje de error
 ea=abs(((xi-pi)/xi)*100);
 pi=xi;
 j=j+1;
end

%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nRaiz= %10.3f en %d Iteraciones',pi,j)