function [estimatedTimePrueba]=estimateTimePrueba(kms,speedKmH,numSlices)

    %c=0;
    t=0;
    d=0;
    x=zeros(1,numSlices);
    for i=1:numSlices
        distancias=(kms(length(kms))/numSlices)*i;
        d=interpolateLinearly(kms,speedKmH,distancias);
        x(i)=d;
    end
    for i=1:length(x)
        intervalo=(kms(length(kms))/numSlices);
        %d=interpolateLinearly(kms,speedKmH,intervalo);
        t=((intervalo/x(i))+t);
        mins=t*60;
    end
    estimatedTimePrueba=mins;
end