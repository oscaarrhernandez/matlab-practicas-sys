% SESIÓN 3 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado c

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

[t,y,w,coef] = rectangular_c(5,0.02,0.4,-4,4,50,0);
[w_esp,F1] = espectro(t,y,0.4);
figure('Name','plot(w,F1) [b] || plot(w,F2) [r]','NumberTitle','off');
plot(w_esp,F1,'-b')

hold on
F2 = 5*0.02*(sen(0.02*w_esp*0.5)/(0.02*w_esp*0.5));
plot(w_esp,F2,'-r')
hold off