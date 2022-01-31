function q=decodificar(coded,n,b,vmin,vmax)
 qunt=reshape(coded,n,length(coded)/n); 
 index=bi2de(qunt',b,'left-msb');       %Convertimos el valor a decimal
 L=2^n;                         
 del=(vmax-vmin)/L;
 q=del*index+vmin+(del/2);  %De-cuantizamos la señal
end