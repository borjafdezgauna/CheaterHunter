function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)

kmnew=linspace(kms(1),kms(length(kms)),numSlices); %a new kms vector divided in the numslices

  for i=1:length(kmnew)  % para recorrer todos los numslices que hemos echo 
      
      newspeed=zeros(1,length(kmnew)); % crear el nuevo vector speed lleno de ceros( vacio)
      z=1;  % iniciar un contador
         
      x=kmnew(i)    % eleguir el km del cual quiero saber su speed intepolando 
      interpolateLinearly(kmnew,speedKmH,x);  % interpolar la speed para cada nuevo km 
      newspeed(x)=interpolatedY;      % voy añadiendo cada resultado a un vector para tener el nuevo
      z=z+1;                          % vector con las speed interpoladas
      
      
  end
        % con esto deveria tener kmnew y speednew divididos en 1000 partes
        % interpoladas
        
        %ahora calcular el tiempo que tarda en casa slice y sumarlos todos 
       
        
        kmew;
        newspeed;
        finalhours=0;
         for j=1:length(kmnew)
             
             hours=(kmnew(j+1)-kmnew(j))/(newspeed(j+1)-newspeed(j));
             finalhours=finalhours+hours
           
         end

         %aqui tengo las horas que tarda
         finaseg=finalhours*3600 %paso las horas a seguntos
         estimatedTime=toHMS(finalseg)  %paso los segundos al formato hh/mm/ss con la funcion ya creada
         
         
end