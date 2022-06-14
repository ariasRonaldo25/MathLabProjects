function tercerorden
tspan = [0:0.01:8];
y0 = [1,1,1];
[T,Y] = ode45(@orden3,tspan,y0);
Z = [-5.*Y(:,3)- 3.*Y(:,2)- Y(:,1)+ 4.*sin(3.*T)];
[T,Y,Z] % imprime los valores
figure(1),plot(T,Z,'r'),title('Ecuacion diferencial a resolver'),grid on
ylabel(' terceraderivada y´´´(t)'),xlabel('Tiempo t'), pause
figure(2),plot(T,Y(:,3),'-'),title('Ecuacion segunda derivada ')
ylabel('y´´(t)= d2y/dt2'),xlabel('Tiempo t'), grind on, pause
figure(3),plot(T,Y(:,2),'-'),title('Ecuacion primera derivada ')
xlabel('Tiempo t'),ylabel('dy/dt = y´(t)'), grind on, pause;
figure(4),plot(T,Y(:,1),'-'),title('Ecuacion solucion de la E.D.'),
ylabel('Funcion y'),xlabel('Tiempo t'), grind on, pause,hold on
function dy =orden3(t,y)
dy = zeros(3,1);
dy(1) = y(2);
dy(2) = y(3);
dy(3) = -5*y(3)- 3*y(2)- y(1)+ 4*sin(3*t);