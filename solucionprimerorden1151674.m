%Ronaldo Rafael Arias Parada-1151674
%y'=Cos(3t), para y(0)=3%
function Orden1
tspan= 0: 0.01 : 3;
y0=[3];
[T,Y]=ode23tb(@f, tspan,y0);
t=0 : 0.01 : 3;
Z = [cos(3.*t)];
[T,Y,Z.']
clf 
plot(T,Z), title('derivada de la funcion'),xlabel('Tiempo t'),
ylabel('derivada y´'),grid on, pause;
plot(T,Y(:,1),'-')%GRAFICA DE Y
title('Solucion de la ecuacion diferencial');
legend('y');
xlabel('Tiempo t');
ylabel('Funcion y');
grid on
hold on
function y1=f(t,y);

y1 = [cos(3.*t)];