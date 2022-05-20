
%Metodo iterativo punto fijo

clear all;%En este segmento de codigo se esta limpiando la pantalla.
clc;

xf(1)=input('Ingrese el valor inicial: ');%En este segmento de codigo se realiza la captura de los datos del intervalo de inicio por teclado
%realizando la conversion la cual permite que cada dato digitado sea tomado
%como un dato numerico.

tol=input('Ingrese el porcentaje de error: ');%En este segmento de codigo se realiza la captura de los datos del porcentaje de error deseado por teclado
%realizando la conversion la cual permite que cada dato digitado sea tomado
%como un dato numerico.

syms x;%se imprime la variable x la cual contiene lo capturado por teclado
%asociado a esa variable

f=input('Ingrese la función f(x), despejada g(f(x)): ');%En este segmento de codigo se realiza la captura de los datos de la funcion por teclado
%realizando la conversion la cual permite que cada dato digitado sea tomado
%como un dato numerico.

i=1; %se inicializa un iterador en 1.

ea(1)=100;
while abs(ea(i))>=tol,%este ciclo se encarga de hallar el valor promedio hasta que >=al porcentaje de error digitado.
 xf(i+1) = subs(f,x,xf(i));
 ea(i+1) = abs((xf(i+1)-xf(i))/xf(i+1))*100;
 i=i+1;
end

fprintf('i xf(i) Error aprox (i) \n');%se encarga de imprimir el error aproximado.

for j=1:i;
 fprintf('%2d \t %11.7f \t %7.3f \n',j-1,xf(j),ea(j)); %Este ciclo se encarga de calcular el error relativo y se repetira hasta llegar al valor que tenga i.

end

