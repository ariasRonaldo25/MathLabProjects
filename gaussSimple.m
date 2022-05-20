
%RONALDO RAFAEL ARIAS PARADA-1151674
function x=gaussSimple(A,b)
    Ab=[A b];% se crea la matriz que recibirá como parametro la función.
    n=length(b);%almacena la longitud de la matriz.
%matriz triangular
  for k=1:n-1 %se crea el ciclo el cual se ejecuta hasta n-1.
        [mayor,j]=max(abs(Ab(k:n,k)));%obtenemos el valor absoluto de los valores.
        fila=j+k-1;
        if fila~=k% se valida que la fila sea diferente a k.
            Ab([k,fila],:)=Ab([fila,k],:);%intercambio de filas
        end% fin del ciclo.
        for i=k+1:n%este ciclo se ejecuta hasta que se alcance el valor de n.
            factor=Ab(i,k)/Ab(k,k);%se obtiene el factor de de la matriz ab.
            Ab(i,k:n+1)=Ab(i,k:n+1)-factor*Ab(k,k:n+1); %          
        end
    end
%incógnitas
    x=zeros(n,1);% se complementa con ceros.
    x(n)=Ab(n,n+1)/Ab(n,n);%se le asigna a x el producto de la operación.
    for i=n-1:-1:1 % se realiza el ciclo el cual se detendrá en 1.
        x(i)=Ab(i,n+1)/Ab(i,i)-Ab(i,i+1:n)*x(i+1:n)/Ab(i,i); %se organizan los valores absolutos obtenidos de matriz Ab y se muestran.
    end% fin del ciclo.
end% fin de la función.