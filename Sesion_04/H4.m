function y=H4(w)
% Funci�n de transferencia que produce distorsion de retardo en una se�al sin atenuarla
% PAR�METROS:
%     w valores de frecuencia.

y=exp(-j*0.005*w.^3);