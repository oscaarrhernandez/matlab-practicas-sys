%Ejercicio1 apartado b
%oscarhernandez_70918137Y_sesion2
A1 = 2;             %Amplitud1
A3 = -1/3;          %Amplitud3
w1 = 10*pi;         %Frecuencia1
w3 = 30*pi;         %Frecuencia3
t = 0:0.0001:1;     %Tiempo

%Primera gráfica CON nivel de continua
y = 2+A1*sin(w1*t)+A3*sin(w3*t);
plot(t,y,'-r');

%Segunda gráfica SIN nivel de continua
hold on
y = A1*sin(w1*t)+A3*sin(w3*t);
plot(t,y,'-b');
hold off