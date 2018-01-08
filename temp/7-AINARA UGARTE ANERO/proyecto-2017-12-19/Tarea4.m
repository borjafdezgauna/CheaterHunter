clc 
clear
for ruta={'n1','a1'}  
      rutaelegida=1;
           for conductor={'driver1','driver2'}
       
                ficheros=sprintf('%s-%s-log.csv',ruta{1},conductor{1});
                leerficheros=dlmread(ficheros);
                kms=leerficheros(:,1);
                speedKmsH=leerficheros(:,2);
                conductor=sprintf('%s',conductor{1});
                estimatedTime = estimateTime(kms, speedKmsH,numSlices);
                tiempoestimado=toHMS(estimatedTime);
                disp(tiempoestimado);
                
           end
end   
disp('pulse una tecla') 
  pause        