

%Creamos una funcion llamada toHMS, la cual tiene la variable "seconds" que sera el dato que vayamos a introducir
  function[hms]=toHMS(seconds)

      %Para sacar el resto, nos quedamos con los decimales de la division de los segundos entre 60
        s= rem(seconds,60); 
        
      %Hallamos los minutos utilizando el "fix" para coger el numero entero sin decimales
        minutos= fix(seconds/60);
        
      %Los decimales anteriores los utilizamos para calcular los minutos con mayor exactitud
        m=rem(minutos,60); 
        
      %Usamos "fix" para el numero entero sin decimales y poder sacar las horas
        h=fix(minutos/60); 
        
      %Con el "sprintf" sacamos por pantalla los datos obtenidos de tal manera: "HH:MM:SS"
        hms=sprintf('%02.f:%02.f:%02.f',h,m,s); 
              % %02d= dos cifras enteras
  end