function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)
  %The variable is two because there are no values lower than 1 as it`s the starting value
variable=2;
  %From the last x value ahead the the y value is the same untill de end of x.
if x>=xVector(length(xVector))
  variable=(length(xVector)+1);
  else
  %Here we get the position of the value we are given like x in the xVector
while xVector(variable)<x 
variable= variable+1;
end
end
%At last we get the interpolated y
interpolatedY= yVector(variable-1);

end