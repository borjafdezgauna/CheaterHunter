function [kms,speedKmH]= leervalores4(nombrearchivo)
v=dlmread(nombrearchivo,',',0,0);
kms=v(:,1);
kms=kms';
speedKmH=v(:,2);
speedKmH=speedKmH';
end