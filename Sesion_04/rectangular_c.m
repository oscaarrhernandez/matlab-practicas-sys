function [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

%Funcion para sumar la serie de Fourier de un tren de pulsos rectangulares
%Version con posibilidad de desplazamiento en el tiempo de la se�al
%Version que devuelve tambi�n la se�al temporal: vector de tiempos y valores de la se�al

%w: vector con las frecuencias de los armonicos
%coef: vector con los coeficientes de la serie
%t: vector con los instantes de tiempo en los que se evalua la se�al
%y: vector con los valores de la se�al en cada instante de tiempo


%V: amplitud de los pulsos
%tau: ancho de los pulsos
%T: periodo de la se�al
%tmin: tiempo inicial de la representacion
%tmax: tiempo final de la representacion
%m: numero de armonicos
%t0: desplazamiento temporal

assert(tmax>tmin,'El tiempo m�ximo debe ser mayor que el tiempo m�nimo')
assert(m>0,'El n�mero de arm�nicos debe ser positivo')


resolucion=tau/(30*pi); %Tiempo entre dos valores consecutivos de la representacion
t=tmin:resolucion:tmax; %Dominio temporal de representacion

y=i*zeros(1,length(t));
coef=i*zeros(1,2*m);
w=zeros(1,2*m);
 
%Sumatorio de la serie de Fourier
for n=-m:-1
    w(m+n+1)=(2*pi*n)/T;
    coef(m+n+1)=V*tau*(sin((tau*w(m+n+1))/2)/((tau*w(m+n+1))/2))*exp(-i*w(m+n+1)*t0);
    y=y+coef(m+n+1)*exp(i*w(m+n+1)*t);
end

for n=1:m
    w(m+n+1)=(2*pi*n)/T;
    coef(m+n+1)=V*tau*(sin((tau*w(m+n+1))/2)/((tau*w(m+n+1))/2))*exp(-i*w(m+n+1)*t0);
    y=y+coef(m+n+1)*exp(i*w(m+n+1)*t);
end

%A�ado en su lugar el coeficiente c0
coef(m+1)=V*tau;
y=y+coef(m+1);

%Serie de Fourier completa:
y=(1/T)*y;


%figure
%plot(t,y, 'r');grid
%title('Representacion del tren de pulsos rectangulares en el dominio del tiempo');
%xlabel('tiempo');
%ylabel('voltaje');

