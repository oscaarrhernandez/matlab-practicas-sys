%Ejercicio 2 apartado a
%oscarhernandez_70918137Y_sesion2
%Funcion rectangular

%Numero de armónicos = 5
[t,y,w,coef]=rectangular(10,0.2,0.4,-2,2,5);
figure('Name','Numero de armónicos 5 = ','NumberTitle','off');
plot(t,y,'-r');
%Numero de armónicos = 15
[t,y,w,coef]=rectangular(10,0.2,0.4,-2,2,15);
figure('Name','Numero de armónicos 15 = ','NumberTitle','off');
plot(t,y,'-r');
%Numero de armónicos = 50
[t,y,w,coef]=rectangular(10,0.2,0.4,-2,2,50);
figure('Name','Numero de armónicos 50 = ','NumberTitle','off');
plot(t,y,'-r');
%Numero de armónicos = 100
[t,y,w,coef]=rectangular(10,0.2,0.4,-2,2,100);
figure('Name','Numero de armónicos 100 = ','NumberTitle','off');
plot(t,y,'-r');
%Numero de armónicos = 400
[t,y,w,coef]=rectangular(10,0.2,0.4,-2,2,400);
figure('Name','Numero de armónicos 400 = ','NumberTitle','off');
plot(t,y,'-r');
%Numero de armónicos = 1000
[t,y,w,coef]=rectangular(10,0.2,0.4,-2,2,1000);
figure('Name','Numero de armónicos 1000 = ','NumberTitle','off');
plot(t,y,'-r');