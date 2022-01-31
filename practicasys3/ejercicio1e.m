% SESI�N 4 SE�ALES Y SISTEMAS
% Ejercicio 1
% Apartado e

% FUNCI�N rectangular_c
% [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCI�N espectro
% [w,F]=espectro(t,x,P)

% FUNCI�N redRC
% y=redRC(w,w0)

% FUNCI�N inv_espectro
% [t,f]=inv_espectro(w,F,P)

[w,coef,t,y]=rectangular_c(5,0.04,0.2,-2,2,50,0);

figure('Name','DISTORSION | w0 = 50*pi','NumberTitle','off');
plot(t,y);
[w,F1]=espectro(t,y,0.2);

w0 = 50*pi;
sistema1=redRC(w,w0);
G1=F1.*sistema1;

hold on
[t2,y2]=inv_espectro(w,G1,0.2);
plot(t2,y2)
hold off

