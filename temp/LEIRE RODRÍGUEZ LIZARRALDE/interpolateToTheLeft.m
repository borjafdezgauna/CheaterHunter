function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector ,x)
 i=2;
  while length(yVector)>=i && xVector(i)<x
   i=i+1;
  end
 interpolatedY=yVector(i-1);
end    
%We can use this function to know what the main function has the speed limit 
%it will return as the last value in the yVector depending on the 'x' given.