function y=H5(w)
% Funci�n de transferencia que produce distorsiones de atenuaci�n y retardo en una se�al 
% PAR�METROS:
%     w valores de frecuencia.

y=sin(w/20).*exp(-j*0.005*w.^3);