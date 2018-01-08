clc
clear

  for ruta={'n1','a1'}  
      rutaelegida=1;
           for conductor={'driver1','driver2'}
       
                ficheros=sprintf('%s-%s-log.csv',ruta{1},conductor{1});
                leerficheros=dlmread(ficheros);
                Distancia=leerficheros(:,1);
                Velocidad=leerficheros(:,2);
                conductorelegido=sprintf('%s',conductor{1});

                subplot(1,2,rutaelegida)
                hold on
                DistanciaporVelocidad=plot(Distancia, Velocidad);
                ylabel('velocidad')
                xlabel('distancia')
                title(conductorelegido)
                %legend('A1 route','N1 route')
                
                   [media,sd,rangomax,rangomin]=valoresestadisticos(Velocidad);
                   fprintf('Estadisticas del %s en la ruta %s:\n Velocidad media:%f (sd.:%f)\n Rango de velocidades:[%f-%f]\n\n',conductor{1}, ruta{1}, media, sd, rangomin, rangomax)
  
               rutaelegida=(rutaelegida + 1);
           end
      rutaelegida=1;
     
    
  end
  
  disp('pulse una tecla')    
  pause