% Ejercicio 2: Chirp
t=0:0.0001:2;

%A3: freq 220Hz / A5: 880Hz 
%Duración: 2s
%Apartado a) Crea un chirp, dibuja la señal en el dominio del tiempo y el
%espectro en amplitud
f_ini=
f_final=
dur=
% Prototipo: chirp(vector de tiempos t, freq inicial, duracion, freq final)
s=chirp(t,..........);
sound(s); %% Si lo queremos escuchar
figure(1)
plot(t,s);
[w,F]=espectro(t,s,dur); %%No es una señal periódica, pero podemos decir que el período es la duración
figure(2)
plot(w,abs(F));

%PROTOIPO (BÁSICO) DE: spectogram(señal,ventana,samples_overlapping);
    %señal: Nuestra señal en el dominio del tiempo
    %ventana: función de ventaneo
    % samples_overlapping: valores que se van a repetir en cada STFT
    % calculada
    
%b) Dibuja el espectrograma del chirp. Por defecto, spectrogram aplicará una
%ventana de tipo hamming de tamaño N/8 con un overlapping del 50%. 
figure(3);
spectrogram(s);


%c) Compara la ventana hamming con la normal, para un tamaño relativamente
%pequeño, pero estable 
L=600; %Nº de muestras (elementos que cogemos del vector)
ventana=hamming(L);
figure(4);
spectrogram(s,ventana);

ventana2=rectwin(L);
figure(5);
spectrogram(s,ventana2);

%d) Compara en la ventana hamming un tamaño grande con uno pequeño.
%   ¿Cuál es el adecuado? Recuerda: A menor tamaño, menor resolución de tiempo pero mayor de frecuencia

L=.... %Nº de muestras
ventana=hamming(L);
figure(6);
spectrogram(s,ventana);



%e) A mismo valor de L, vamos a modificar ahora el overlapping. El
%overlapping es el número de muestras (elementos del vector) que va a
%superponer. Cuanto más grande, más se superponen las señales. No puede ser
%nunca mayor que L (obviamente), así que lo ponemos en función de L.
L=2000;
ventana=hamming(L);
porcentaje=... %% Escribe un valor entre 0 y 1. 
noverlap=L*porcentaje;
figure(8);
spectrogram(s,ventana,noverlap);

