numSlices=input('Introduce un numero de rodajas:');
%este script imprime el tiempo estimado de cada conductor por cada
%ruta(A1,N1) en horas, minutos y segundos, para ello se utiliza la funcion
%estimateTime
for conductor ={'1','2'}
    for ruta = {'n1','a1'}
      c1=sprintf('%s-driver%s-log.csv',ruta{1},conductor{1});
      
      %Conductor 1
      lectura_fichero = dlmread(c1,',');
      yVector = lectura_fichero(:,2); %Velocidad
      xVector = lectura_fichero(:,1); %Distancia
      
      segundos=estimateTime( xVector, yVector, numSlices);
      tiempoHMS=toHMS(segundos);
      
      fprintf('Tiempo estimado del conductor %s en la ruta %s:%s\n',conductor{1},ruta{1},tiempoHMS)
    end
end