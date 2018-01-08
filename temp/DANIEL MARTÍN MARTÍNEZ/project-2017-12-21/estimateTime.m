function [estimatedTime] = estimateTime (kms,speedKmH, numSlices)
m = toMeters(kms);
msSpeed = toMetersPerSecond( speedKmH );
x = linspace (m(1),m(end),numSlices);
    for j=1:length (x)
        interpolatedY(j)=interpolateLinearly (m,msSpeed,x(j));
    end
h=(1:length(interpolatedY)-1);
    for j=h
  
       t=(x(j+1)-x(j) )/interpolatedY(j+1);
       %% Metemos cada valor del tiempo en una matriz para poder guardar los valores
      
       a(j)=t;
    end

        t=(x(end)-x(j) )/interpolatedY(end);
        a(j+1)=t;
      
   
  
%%calculamos el timepo total
estimatedTime = sum(a);

end

