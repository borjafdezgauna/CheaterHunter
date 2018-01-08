function interpolateY = interpolateLinearly (distance, speed,x)
  
  i = 1;
  
  while distance(i)<=x && i<length(distance)
    
        i = i+1;   
end

  Y2 = speed (i);
  Y1 = speed (i-1);
  X2 = distance (i);
  X1 = distance (i-1);
  
  slope = (Y2-Y1)/(X2-X1);
  
  interpolateY = Y1 + slope*(x-X1);
  
  end
  
  

%driver1N1 = dlmread('n1-driver1-log.csv',',');
%speed1N1 = driver1N1(:,2);
%distanceorigin1N1 = driver1N1(:,1);