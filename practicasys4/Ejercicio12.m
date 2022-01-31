
%% EJERCICIO 1
f=442;
A=1;

% duration=3; %Para escuchar
duration=100*2/f;
fs=2000*pi*2;  % Frecuencia de muestreo
t=0:1/fs:duration;

%Creamos tres armónicos con el sonido La
s1 = A*1 * cos(2*pi*f*t);
s2 = A*0.5 * cos(2*2*pi*f*t);
s3 = A*0.2 * cos(3/2*2*pi*f*t);
y=(s1+s2+s3);
sound(y,fs);

%Periodo: 1*442, 2*442, 3/2*442 -->      2, 4, 3--> 2/442

figure(1);
plot(t,y);

figure(2);
[w,F]=espectro(t,y,0.0045);
plot(w,abs(F));
axis([-6500 6500 0 2.7*10^-3]);
pause();

%Cuantización

% Niveles de V (máximo y mínimo de la señal)
% Se puede probar con otros niveles
vmax=200;
vmin=-100;
 % m=2; % Nº de bits para la cuantización. En este caso, 4 niveles
 m=2; % 4 niveles
% m=10; % 1024 niveles

[q,index]=cuantizar(y,vmin,vmax,m);
figure(3)
plot(t,y);
hold on
plot(t,q);
sound(q,fs); %Escuchamos el ruido de cuantización

%Codificar
% b=2; %Tipo de codificación: binaria
% b=3;
 b=4;

pulsos=ceil(log2(2^m)/log2(b)); %cuantos pulsos representan cada muestra
c=codificar(index,m,b);
tc=0:1/(fs*pulsos):(numel(c)-1)/(fs*pulsos); %tiempos con la duración de cada código
figure(4);
%indices=1:numel(t>=1 & t<=1.001); %representamos solo el entre el instante 1 y 1.1
indices=t>=0 & t<=1.01;
subplot(2,1,1)
stairs(t(indices),q(indices));

indicesc=tc>=0 & tc<=0.01;%representamos solo el entre el instante 0 y 0.1
subplot(2,1,2)
stairs(tc(indicesc),c(indicesc));
   
%Decodificar

q=decodificar(c,m,b,vmin,vmax);
figure(5);
plot(t,y);
hold on;
plot(t,q);
sound(q,fs);
pause();
 
 
%Filtro
%Atenúa pero no es un corte abrupto.
qf=lowpass(q,800,fs,'ImpulseResponse','iir','Steepness',0.5);
figure(6);
plot(t,y);
hold on;
plot(t,qf);
sound(qf,fs);

%Verlo también en los espectros
figure(8)
[w2,F2]=espectro_s(qf,fs);
plot(f,abs(F)); hold on; plot(w2,abs(F2))

 

