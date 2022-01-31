% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado b

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

[w,coef,t,y]=rectangular_c(5,0.04,0.2,-2,2,50,0);
[w,F1]=espectro(t,y,0.2);
plot(w,abs(F1));