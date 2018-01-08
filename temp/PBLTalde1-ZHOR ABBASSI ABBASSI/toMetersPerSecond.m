% 4. ATAZA:
% Scrit honek gifdari bakoitzak egin duen bidea burutzeko behar izan duen
% denbora aztertzen du:

%3 partea. funtzio honek abiadura bat km/orduko formatuan emanda, bere
% m/segunduko abiadura baliokidea ematen du.

function [msSpeed] = toMetersPerSecond(speedKmH)
    msSpeed = speedKmH/3600*1000
end

