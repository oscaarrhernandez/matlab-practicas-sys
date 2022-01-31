% SESI�N 4 SE�ALES Y SISTEMAS
% Ejercicio 1
% Apartado c

% FUNCI�N rectangular_c
% [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCI�N espectro
% [w,F]=espectro(t,x,P)

% FUNCI�N redRC
% y=redRC(w,w0)

[w,coef,t,y]=rectangular_c(5,0.04,0.2,-2,2,50,0);
[w,F1]=espectro(t,y,0.2);

w0 = 50*pi;
sistema1=redRC(w,w0);
%amplitud
figure('Name','AMPLITUD | w0 = 50*pi','NumberTitle','off');
plot(w,abs(sistema1),'-r')
%fase
figure('Name','FASE | w0 = 50*pi','NumberTitle','off');
plot(w,angle(sistema1),'-b')