
%RONALDO RAFAEL ARIAS-1151674
A=[-3 1 0; -2 1 1; 2 -1 4];% define la matriz que se debe ingresar, la cual debe ser de 3x3.
b=[-5;0;15]; % define la matriz de coeficientes.
n=length(b);% obtenemos la longitud de la matriz b.
d=det(A); % hallamos el determinante de la matriz A
x=zeros(n,1); %  crear una matriz
for i=1:n % ciclo que recorrera desde 1 hasta n es decir el ultimo elemento de la matriz.
    Ab=[A(:,1:i-1),b,A(:,i+1:n)];% se recorren los elementos de la matriz 3x3 y se ubican en su respectiva posicion.
    x(i)=det(Ab)/d; % Indica la solución a la ecuación de matrices Ax = b, que se obtiene usando mldivide.
    
end % fin del ciclo.

disp('solucion')%imprime el titulo de la solucion.
disp(x)% imprime la solucion del sistema 3x3.