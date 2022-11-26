function [fshift,powershift]=espectro_s(y,fs)
 n = length(y); 
 Y = fft(y);
 Y=fftshift(Y); %Espejamos la señal
fshift = (-n/2:n/2-1)*(fs/n); % Centramos en frecuencia cero
powershift = abs(Y).^2/n;     % Centramos en frecuencia cero 
end