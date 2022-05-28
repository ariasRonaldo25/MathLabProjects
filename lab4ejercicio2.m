%Ronaldo Rafael Arias Parada-1151674
t=0:0.01:15; %declara t
z = 50+30.*exp(-0.081093.*t); %declara z
figure(1),plot(t,z), grid on %genera la grafica 2d
title('Ecuacion solucioon de la E.D'),
ylabel('y(t)=50+30exp(-0.081093 t)'), xlabel('Tiempo t'), pause
w=-0.081093.*(z-50); %declara w
figure(2),plot(t,w,'r'), grid on %genera la grafica
title('Ecuacion diferencial a resolver')
ylabel('y´(t)=-0.081093(y-50)'), xlabel('Tiempo t'), pause 
