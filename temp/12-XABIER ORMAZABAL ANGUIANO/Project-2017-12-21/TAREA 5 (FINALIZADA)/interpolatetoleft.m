function interpolatedlimit=interpolatetoleft (xVector,yVector,x)
v=find(xVector<x);
v=max(v);
interpolatedlimit=yVector(v);
end