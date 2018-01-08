%%Adierazten du bide bakoitza egiteko behar den denbora kalkulatzen duena
function [ EstimateTime ] = estimateTime( kms, speedKmH, numSlices)
EstimateTime= 0 ;
distantzia= (kms(end) - kms(1)) / numSlices;
for x = linspace (kms(1), kms (end), numSlices);
    [interpolateV]= interpolateLinearly(kms,speedKmH,x);
    if interpolateV== 0 ;
        denbora=0;
    else
        denbora= distantzia/ interpolateV;
    end 
    EstimateTime= EstimateTime + denbora;
end
EstimateTime=EstimateTime*3600;
end

  