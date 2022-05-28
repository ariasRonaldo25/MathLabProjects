
%script para integrar la ecuación diferencial de primer orden que describe la carga de un condensador.
%Ronaldo Rafael Arias Parada-1151674
V0=10;
R=2; %resistencia 
C=0.8; %capacidad ;
tf=10; %tiempo final

f=@(t,x) V0/R-x/(R*C); 
x0=0; %situación inicial
[t,x]=ode45(f,[0,tf],x0); 
plot(t,x)
grid on
xlabel('t')
ylabel('q');
title('Carga del condensador')