function  interpolatedY=interpolateToTheLeft(xbektorea,ybektorea,x)
i=1;
while i<=length(xbektorea) && x>=xbektorea(i)
 i=i+1;
end
if x==0
  interpolatedY=ybektorea(1);
  else
  interpolatedY=ybektorea(i-1);
  end
end