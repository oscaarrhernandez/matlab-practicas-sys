% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado a

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)
[w,coef,t,y]=rectangular_c(5,0.04,0.2,-2,2,50,0);
plot(t,y);