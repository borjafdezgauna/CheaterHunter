function [kms,limite]=leervalores5(nombrearchivo)
a=dlmread(nombrearchivo);
kms=a(:,1);
kms=kms';
limite=a(:,2);
limite=limite';
end