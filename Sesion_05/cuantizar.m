function [q,ind]=cuantizar(s,vmin,vmax,n)
 L=2^n;
 del=(vmax-vmin)/L;  %Del se calcula en funci�n de los niveles para una cuantizaci�n equidistante.
 part=vmin:del:vmax;         % Los niveles est�n entre vmin y vmax con incremento del
 code=vmin-(del/2):del:vmax+(del/2);        % Valores de cuantizaci�n
 [ind,q]=quantiz(s,part,code);              % Cuantizaci�n

 l1=length(ind);
 l2=length(q);
 plot(q);
 for i=1:l1
    if(ind(i)~=0)          % Normalizaci�n de los �ndices de los niveles
       ind(i)=ind(i)-1;
    end 
    %i=i+1;
 end   
  for i=1:l2
     if(q(i)==vmin-(del/2))   % Normalizaci�n de los valores
         q(i)=vmin+(del/2);
     end
 end    

end