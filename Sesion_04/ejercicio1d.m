[w,coef,t,y]=rectangular_c(5,0.002,0.01,-0.1,0.1,50,0);
[w,F1]=espectro(t,y,0.01);
figure('Name','DIFERENCIA ESPECTROS | w0 = 5000*pi','NumberTitle','off');
plot(w,abs(F1));

hold on
w0 = 5000*pi;
sistema1=redRC(w,w0);

G1=F1.*sistema1;
plot(w,abs(G1))
hold off