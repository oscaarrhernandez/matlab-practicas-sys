% Ejercicio 2: Chirp
t=0:0.0001:2;

%A3: freq 220Hz / A5: 880Hz 
%Duraci�n: 2s
%Apartado a) Crea un chirp, dibuja la se�al en el dominio del tiempo y el
%espectro en amplitud
f_ini=
f_final=
dur=
% Prototipo: chirp(vector de tiempos t, freq inicial, duracion, freq final)
s=chirp(t,..........);
sound(s); %% Si lo queremos escuchar
figure(1)
plot(t,s);
[w,F]=espectro(t,s,dur); %%No es una se�al peri�dica, pero podemos decir que el per�odo es la duraci�n
figure(2)
plot(w,abs(F));

%PROTOIPO (B�SICO) DE: spectogram(se�al,ventana,samples_overlapping);
    %se�al: Nuestra se�al en el dominio del tiempo
    %ventana: funci�n de ventaneo
    % samples_overlapping: valores que se van a repetir en cada STFT
    % calculada
    
%b) Dibuja el espectrograma del chirp. Por defecto, spectrogram aplicar� una
%ventana de tipo hamming de tama�o N/8 con un overlapping del 50%. 
figure(3);
spectrogram(s);


%c) Compara la ventana hamming con la normal, para un tama�o relativamente
%peque�o, pero estable 
L=600; %N� de muestras (elementos que cogemos del vector)
ventana=hamming(L);
figure(4);
spectrogram(s,ventana);

ventana2=rectwin(L);
figure(5);
spectrogram(s,ventana2);

%d) Compara en la ventana hamming un tama�o grande con uno peque�o.
%   �Cu�l es el adecuado? Recuerda: A menor tama�o, menor resoluci�n de tiempo pero mayor de frecuencia

L=.... %N� de muestras
ventana=hamming(L);
figure(6);
spectrogram(s,ventana);



%e) A mismo valor de L, vamos a modificar ahora el overlapping. El
%overlapping es el n�mero de muestras (elementos del vector) que va a
%superponer. Cuanto m�s grande, m�s se superponen las se�ales. No puede ser
%nunca mayor que L (obviamente), as� que lo ponemos en funci�n de L.
L=2000;
ventana=hamming(L);
porcentaje=... %% Escribe un valor entre 0 y 1. 
noverlap=L*porcentaje;
figure(8);
spectrogram(s,ventana,noverlap);

