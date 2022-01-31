function [q,ind]=cuantizar(s,vmin,vmax,n)
 L=2^n;
 del=(vmax-vmin)/L;  %Del se calcula en función de los niveles para una cuantización equidistante.
 part=vmin:del:vmax;         % Los niveles están entre vmin y vmax con incremento del
 code=vmin-(del/2):del:vmax+(del/2);        % Valores de cuantización
 [ind,q]=quantiz(s,part,code);              % Cuantización

 l1=length(ind);
 l2=length(q);
 plot(q);
 for i=1:l1
    if(ind(i)~=0)          % Normalización de los índices de los niveles
       ind(i)=ind(i)-1;
    end 
    %i=i+1;
 end   
  for i=1:l2
     if(q(i)==vmin-(del/2))   % Normalización de los valores
         q(i)=vmin+(del/2);
     end
 end    

end