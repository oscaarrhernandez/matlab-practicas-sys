duration=10;
fs=200;  % Frecuencia de muestreo
t=0:1/fs:duration;
s=3*cos(4*pi*t)+sin(8*pi*t);
plot(t,s);

[w,F]=espectro(t,s,0.535);
plot(w,abs(F));