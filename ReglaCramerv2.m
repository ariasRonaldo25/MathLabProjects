
%RONALDO RAFAEL ARIAS-1151674
clear
A = [ 2 -1 5;
1 -3 -8;
-2 -7 -9]; % matriz a desarrollar
b = [-3; 0; -9];% matriz de coeficientes.
 n=size(A,1);%recibe y analiza el tamaño de la matriz proporcionada.
x = zeros(n,1);
i=1;%indice inicializado en 1.
while i<=n %este ciclo se ejecuta mientras i<=n.
    Am = A;%se le asigna la matriz A a Am.
    Am(:,i) = b;% asigna el recorrido de Am a b.
    x(i) = det(Am)/det(A);%se encarga de obtener el determinante de la posicion i de Am y lo divide por el determinante de A.
    i=i+1;% se le asigna al indice un i+1.
end%fin del ciclo.
x % imprime la solucion.
