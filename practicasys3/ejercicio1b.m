% SESI�N 4 SE�ALES Y SISTEMAS
% Ejercicio 1
% Apartado b

% FUNCI�N rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCI�N espectro
% [w,F]=espectro(t,x,P)

[w,coef,t,y]=rectangular_c(5,0.04,0.2,-2,2,50,0);
[w,F1]=espectro(t,y,0.2);
plot(w,abs(F1));