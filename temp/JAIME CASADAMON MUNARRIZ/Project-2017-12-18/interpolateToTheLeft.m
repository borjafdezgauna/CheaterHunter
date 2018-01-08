%interpolatetoTheLeft-

function [interpolatedY]= interpolateToTheLeft(xVector,yVector,x)
 if x>=0 && x<xVector(2)%if x is in the range, the y assignated is the previous value
     newy=yVector(1);
 elseif x>=xVector(2) && x<xVector(3)%if x is in the range, the y assignated is the previous value
     newy=yVector(2);
 elseif x>=xVector(3)%if x is in the range, the y assignated is the previous value
     newy=yVector(3);
 end
 interpolatedY=newy;%output
end