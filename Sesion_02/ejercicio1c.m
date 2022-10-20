% SESIÓN 3 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado c
[w,coef,t,y]=rectangular_c(5,0.002,0.02,-0.2,0.2,50,0);
[w_esp,F1] = espectro(t,y,0.02);
figure('Name','plot(w,F1) [b] || plot(w,F2) [r]','NumberTitle','off');
plot(w_esp,F1,'-b')
hold on
F2 = 5*0.002*((sin((0.002*w_esp)/2)./((0.002*w_esp)/2)));
plot(w_esp,F2,'-r')
hold off