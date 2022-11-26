f=442;              % Frecuencia de 'LA'
A=1;
duration=100*2/f;   % Reemplazar por duration=100*2/f para escuchar más tiempo
fs=2000*pi*2;       % Frecuencia de muestreo
t=0:1/fs:duration;

% Tres armonicos con el sonido 'LA'
s1 = A*1*cos(2*pi*f*t);
s2 = A*0.5*cos(2*2*pi*f*t);
s3 = A*0.2*cos(3/2*2*pi*f*t);
y = (s1+s2+s3);
% sound(y,fs);

% Para calcular el periodo de la función espectro:
% 1*442, 2*442, 3/2*442 --> 2, 4, 3 --> 2/442
[w,F]=espectro(t,y,0.0045);

% CUANTIZACIÓN DE LA SEÑAL (CON VARIACIÓN EN LOS NIVELES DE CUANTIZACIÓN)
vmax=1.7;
vmin=-0.95;
m=2;                % 4 niveles de cuantización

[q,index]=cuantizar(y,vmin,vmax,m);
figure('Name','CUANTIZACIÓN DE 4 NIVELES','NumberTitle','off');
plot(t,y);
hold on
plot(t,q);
sound(q,fs);
hold off

pause();

m=4;                % 16 niveles de cuantización

[q,index]=cuantizar(y,vmin,vmax,m);
figure('Name','CUANTIZACIÓN DE 16 NIVELES','NumberTitle','off');
plot(t,y);
hold on
plot(t,q);
sound(q,fs);
hold off

pause();

m=8;                % 256 niveles de cuantización

[q,index]=cuantizar(y,vmin,vmax,m);
figure('Name','CUANTIZACIÓN DE 256 NIVELES','NumberTitle','off');
plot(t,y);
hold on
plot(t,q);
sound(q,fs);
hold off

pause();

m=10;                % 1024 niveles de cuantización

[q,index]=cuantizar(y,vmin,vmax,m);
figure('Name','CUANTIZACIÓN DE 1024 NIVELES','NumberTitle','off');
plot(t,y);
hold on
plot(t,q);
sound(q,fs);
hold off

