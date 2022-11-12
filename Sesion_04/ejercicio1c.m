[w,coef,t,y]=rectangular_c(5,0.002,0.01,-0.1,0.1,50,0);
[w,F1]=espectro(t,y,0.01);

w0 = 5000*pi;
sistema1=redRC(w,w0);
%amplitud
figure('Name','AMPLITUD | w0 = 5000*pi','NumberTitle','off');
plot(w,abs(sistema1),'-r')
%fase
figure('Name','FASE | w0 = 5000*pi','NumberTitle','off');
plot(w,angle(sistema1),'-b')