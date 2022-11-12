%Ejercicio2 apartado a
%oscarhernandez_70918137Y_sesion2
%function [w,coef]=rectangular(V,tau,T,tmin,tmax,m)
V=5;
tau=0.1;
T=0.4;
tmin=-2;
tmax=2;


%numero de armonico 5
m=5;
[w,coef]=rectangular(V,tau,T,tmin,tmax,m);
pause

%numero de armonico 15
m=15;
[w,coef]=rectangular(V,tau,T,tmin,tmax,m);
pause

%numero de armonico 50
m=50;
[w,coef]=rectangular(V,tau,T,tmin,tmax,m);
pause

%numero de armonico 100
m=100;
[w,coef]=rectangular(V,tau,T,tmin,tmax,m);
pause

%numero de armonico 400
m=400;
[w,coef]=rectangular(V,tau,T,tmin,tmax,m);
pause

%numero de armonico 1000 
m=1000;
[w,coef]=rectangular(V,tau,T,tmin,tmax,m);
pause
