function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
kms=toMeters( kms );
speedKmH=toMetersPerSecond( speedKmH );
tiempo_total=0;
mis_x=linspace(kms(1),kms(length(kms)),numSlices);
    for i=1:length(mis_x)-1
       %para cada x en mis_x necesito mi_y
        x=mis_x(i+1)-mis_x(i);
        y=interpolateLinearly( kms, speedKmH, mis_x(i));
        tiempo=x/y;
        tiempo_total=tiempo_total + tiempo;
     end
estimatedTime=tiempo_total;
end