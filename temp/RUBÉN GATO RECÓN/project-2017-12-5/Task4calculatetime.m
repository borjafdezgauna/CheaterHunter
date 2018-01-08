function [step] = calculatetime(xmeters, yspeed)

xmeters = [0 1 2 3];
ymeters =  [10 20 30];

for i = 2:length(xmeters)
   m = xmeters(i)- xmeters(i-1)
for v = ymeters
   t= m/v
   
end
end
end