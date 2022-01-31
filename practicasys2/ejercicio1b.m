% SESIÓN 3 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado b

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

% Para comprobar los valores de w y w_esp vamos a representar gráficamente
% mediante stem() y plot() los resultados obtenidos
[t,y,w,coef] = rectangular_c(5,0.02,0.4,-4,4,50,0);
figure('Name','stem(w,coef) [r] || plot(w_esp,F) [b]','NumberTitle','off');
stem(w,coef,'-r')

hold on
[w_esp,F] = espectro(t,y,0.4);
plot(w_esp,F,'-b')
hold off

% La única diferencia que observamos en la gráfica al hacer zoom es que al
% representar mediante stem() obtenemos valores discretos, en la función
% plot() observamos un valor que parece continuo, pero se interpreta como 
% un espectro discreto. Debajo de esta gráfica puede haber pequeñas subidas
% y bajadas, así como picos, pero esto se puede obviar.