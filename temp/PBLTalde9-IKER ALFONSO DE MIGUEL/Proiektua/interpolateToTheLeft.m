function [ interpolatedY ] = interpolateToTheLeft( xVector, yVector , x)

%% x eta y balioekin bektoreak sartu eta y-ren interpolatutako balioa itzuli emandako x-rekiko

i=1;
if x>xVector(end)
    interpolatedY=yVector(end);
else
while xVector(i)<x
    i=i+1;
end
if i==1
interpolatedY=yVector(1);   
else
interpolatedY=yVector(i-1);
end
end


end