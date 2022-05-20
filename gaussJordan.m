
%RONALDO RAFAEL ARIAS PARADA-1151674

clear all;

clc;% limpiando pantalla

format rat

disp('Resolviendo un sistema de ecuaciones usando')%titulos

disp('El metodo de Gauss Jordan')%titulo.

disp('')

A=input('Ingrese la matriz n = ');%aca se ingresa la matriz que se desea resolver.

 

r=length(A(:,1));%almacena la longitud de las filas.

c=length(A(1,:));%almacena la longitud de las columnas.

 

disp('Procesos: ')%titulo.

 

for i=1:r%este ciclo se encarga de recorrer todas las filas.

       

    f=0;

    l=i;

    if A(i,i) ~= 1

        for m=i+1:r

            if A(m,i) == 1

                 B=A(i,:);

                 A(i,:)=A(m,:);

                 fprintf ('intercambiando R%.f con R%.f.\n',m,i)

                 A(m,:)=B;

                 disp(A)

                 break;

            end

        end

    end

   

    if A(i,i)== 0

   

        for k=i+1:r

            if A(k,i)~= 0

                B=A(i,:);

                A(i,:)=A(k,:);

                fprintf ('intercambiando R%.f con R%.f.\n',k,i)

                 A(k,:)= B;

                 diso(A);

                d=A(i,i);

                f=1;

            break;

            end

        end

       

        if f == 0

            for l=i+1:c-1

                if A(i,l) ~= 0

                    d=A(i,l);

                    f=1;

                break;

                end

            end

        end

       

    else

        d=A(i,i);

        f=1;

    end

   

   if f ~= 0

        if d~=1

            fprintf('R%.f / (%s) \n',i,rats(d))

            A(i,:)=A(i,:)/d ;

            disp(A);

        end

        for j=i+1:r

            if A(j,l)== 0

                continue;

            end

            fprintf('R%.f-  (%s)*R%.f \n',j,rats(A(j,l)),i)

            A(j,:)=A(j,:) - A(j,l)*A(i,:);

            disp(A)

        end

   end

  

end

disp('')

disp('Fase inversa')

fg=0;

for i=r:-1:1

    f=0;

     l=i;

     if A(i,i)== 0

        for l=i+1:c-1

            if A(i,l) ~= 0

                d=A(i,l);

                  f=1;

                break;

            end

        end

               

    else

        d=A(i,i);

        f=1;

    end

   

   if f ~= 0

        for j=i-1:-1:1%ciclo que va desde j=i hasta 1

            if A(j,i)== 0% se validad si la matriz A en la posicion j,1 es igual a o

                continue;% si se cumple se continua.

            end

            fprintf('R%.f-  (%s)*R%.f \n',j,rats(A(j,i)),i)

            A(j,:)=A(j,:) - A(j,l)*A(i,:) ;

            disp(A);

            fg=1;

        end

   end

   if ( (f==0 && A(i,c)) == 1 || fg==0 && i==1)%validación que permite conocer si la matriz digitada tiene o no una solucion

       disp('No tiene solucion')   

       break;% instruccion para romper el ciclo.

   end

 

end

 