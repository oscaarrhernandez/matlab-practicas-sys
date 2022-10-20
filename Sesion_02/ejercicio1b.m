% SESIÓN 3 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado b
% rectangular_c.m : [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

[w,coef,t,y]=rectangular_c(5,0.002,0.02,-0.2,0.2,50,0);
stem(w,coef,'-r');
[w_esp,F] = espectro(t,y,0.02);
plot(w_esp,F,'-b');
