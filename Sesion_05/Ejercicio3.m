
%%%%%%%%%%%%%%%%
%% EJERCICIO 3

[y,fs]=audioread('violinA.wav');
y=y(:,1);
t=0:1/fs:(numel(y)-1)/fs; %tiempos con la frecuencia de muestreo
figure(1);

plot(t,y);
sound(y,fs);

% Para ver el espectro: 
[w,F]=espectro_s(y,fs);
figure(2);
plot(w,abs(F));
pause();

%A�adir ruido blanco
% noise = rand(1, numel(y));
% sound(y+0.02*noise',fs);
% pause();

%  xn2=resample(xn,2,1);
%  sound(xn2);
 
%Cuantizar

%Niveles de V (m�ximo y m�nimo de la se�al)
% Se puede probar con otros niveles
vmax=0.1;
vmin=-0.12;
%m=2; % N� de bits para la cuantizaci�n. En este caso, 4 niveles
% m=4; % 16 niveles
 m=10; % 1024 niveles

[q,index]=cuantizar(y,vmin,vmax,m);
figure(3)
plot(t,y);
hold on
plot(t,q);
sound(q,fs); %Escuchamos el ruido de cuantizaci�n
% % [q,index]=cuantizar(y,vmin,vmax,4);
% % plot(q);
% % [q,index]=cuantizar(y,vmin,vmax,10);
% % plot(q);
pause();

%Codificar
%b=2; %Tipo de codificaci�n: binaria
 b=3;
% b=4;
% Muestra cuantizada se codifica con un grupo de m pulsos, con b alturas:
% N=n^m--> 2^m=m^b
pulsos=ceil(log2(2^m)/log2(b)); %cuantos pulsos representan cada muestra
c=codificar(index,m,b);
tc=0:1/(fs*pulsos):(numel(c)-1)/(fs*pulsos); %tiempos con la duraci�n de cada c�digo
figure(4);
indices=t>=1 & t<=1.001; %representamos solo el entre el intante 1 y 1.1
subplot(2,1,1)
stairs(t(indices),q(indices));

indicesc=tc>=1 & tc<=1.001;%representamos solo el entre el intante 1 y 1.1
subplot(2,1,2)
stairs(tc(indicesc),c(indicesc));
pause();

%Decodificar
q=decodificar(c,m,b,vmin,vmax);
figure(5);
plot(t,y);
hold on;
plot(t,q);
sound(q,fs);
pause();

%Filtro
%Aten�a pero no es un corte abrupto.
qf=lowpass(q,300,fs,'ImpulseResponse','iir','Steepness',0.95);
figure(6);
plot(t,y);
hold on;
plot(t,qf);
sound(qf,fs);

%Verlo tambi�n en los espectros
figure(8)
[w2,F2]=espectro_s(qf,fs);
plot(w,abs(F)); hold on; plot(w2,abs(F2));

