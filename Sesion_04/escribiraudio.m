function escribiraudio(cadena,y)
% PARAMETROS
%     cadena    nombre fichero de salida
%     y         se�al en el tiempo de audio
    audiowrite(cadena,y,44100);
    