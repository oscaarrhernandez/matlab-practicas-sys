f=442;              
A=1;
duration=100*2/f;   
fs=2000*pi*2;       
t=0:1/fs:duration;

s1 = A*1*cos(2*pi*f*t);
s2 = A*0.5*cos(2*2*pi*f*t);
s3 = A*0.2*cos(3/2*2*pi*f*t);
y = (s1+s2+s3);

[w,F]=espectro(t,y,0.0045);

vmax=1.7;
vmin=-0.95;
m=2;

b=2;

pulsos=ceil(log2(2^m)/log2(b));
c=codificar(index,m,b);
tc=0:1/(fs*pulsos):(numel(c)-1)/(fs*pulsos);
figure('Name','SEÑAL CODIFICADA BINARIA','NumberTitle','off');

indices=t>=0 & t<=1.01;
subplot(2,1,1)
stairs(t(indices),q(indices));

indicesc=tc>=0 & tc<=0.01;                   
subplot(2,1,2)
stairs(tc(indicesc),c(indicesc));

q=decodificar(c,m,b,vmin,vmax);
figure('Name','SEÑAL DECODIFICADA BINARIA','NumberTitle','off');
plot(t,y);
hold on;
plot(t,q);
sound(q,fs);
hold off

pause();

b=3; 

pulsos=ceil(log2(2^m)/log2(b));            
c=codificar(index,m,b);
tc=0:1/(fs*pulsos):(numel(c)-1)/(fs*pulsos); 
figure('Name','SEÑAL CODIFICADA TERNARIA','NumberTitle','off');

indices=t>=0 & t<=1.01;
subplot(2,1,1)
stairs(t(indices),q(indices));

indicesc=tc>=0 & tc<=0.01;                  
subplot(2,1,2)
stairs(tc(indicesc),c(indicesc));


q=decodificar(c,m,b,vmin,vmax);
figure('Name','SEÑAL DECODIFICADA TERNARIA','NumberTitle','off');
plot(t,y);
hold on;
plot(t,q);
sound(q,fs);
hold off

pause();

b=4; 

pulsos=ceil(log2(2^m)/log2(b));               
c=codificar(index,m,b);
tc=0:1/(fs*pulsos):(numel(c)-1)/(fs*pulsos); 
figure('Name','SEÑAL CODIFICADA CUATERNARIA','NumberTitle','off');

indices=t>=0 & t<=1.01;
subplot(2,1,1)
stairs(t(indices),q(indices));

indicesc=tc>=0 & tc<=0.01;                    
subplot(2,1,2)
stairs(tc(indicesc),c(indicesc));


q=decodificar(c,m,b,vmin,vmax);
figure('Name','SEÑAL DECODIFICADA CUATERNARIA','NumberTitle','off');
plot(t,y);
hold on;
plot(t,q);
sound(q,fs);
hold off