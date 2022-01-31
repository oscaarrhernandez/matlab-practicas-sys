%Ejercicio1 apartado a
%oscarhernandez_70918137Y_sesion2
A=2;                %Amplitud
f=20;               %Frecuencia
fase=3*pi/4;        %Fase
t=0:0.001:0.6;       %Tiempo entre 0 y 0.6 incrementando 0.01

y = A*sin(2*pi*f*t+fase);
plot(t,y);