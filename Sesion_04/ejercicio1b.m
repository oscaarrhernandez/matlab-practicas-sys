[w,coef,t,y]=rectangular_c(5,0.002,0.01,-0.1,0.1,50,0);
[w,F1]=espectro(t,y,0.01);
plot(w,abs(F1));
