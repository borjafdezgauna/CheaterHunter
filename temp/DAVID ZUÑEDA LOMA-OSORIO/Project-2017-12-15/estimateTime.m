function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)

kmnew=linspace(kms(1),kms(length(kms)),numSlices); %a new kms vector divided in the numslices
newspeed=zeros(1,length(kmnew));
finalhours=0;

  for i=1:length(kmnew)  % para recorrer todos los numslices que hemos echo 
  
      x=kmnew(i);    % eleguir el km del cual quiero saber su speed intepolando 
      temp=interpolateLinearly(kms,speedKmH,x);  % interpolar la speed para cada nuevo km 
      newspeed(i)=temp;      % voy añadiendo cada resultado a un vector para tener el nuevo
                    
  
      time=(kmnew(2)-kmnew(1))/newspeed(i);
      finalhours=finalhours+time;
  end
        % con esto deveria tener kmnew y speednew divididos en 1000 partes
        % interpoladas
   estimatedTime=finalhours*3600
         
end