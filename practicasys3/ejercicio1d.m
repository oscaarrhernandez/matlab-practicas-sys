% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado d

% FUNCIÓN rectangular_c
% [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

% FUNCIÓN redRC
% y=redRC(w,w0)

[w,coef,t,y]=rectangular_c(5,0.04,0.2,-2,2,50,0);
[w,F1]=espectro(t,y,0.2);
figure('Name','DIFERENCIA ESPECTROS | w0 = 50*pi','NumberTitle','off');
plot(w,abs(F1));

hold on
w0 = 50*pi;
sistema1=redRC(w,w0);

G1=F1.*sistema1;
plot(w,abs(G1))
hold off