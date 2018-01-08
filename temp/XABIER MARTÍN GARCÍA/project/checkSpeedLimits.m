

%We used a function to see where a driver is driving at the speed limit, over the speed limit or above the sepeed limit.

function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
illegal_Kms = 0;
slice_Size = driverLogKm(end)/numSlices;
index = 0;
current_Limit = 0;
current_Speed = 0;
last_Vector = length(driverLogKm);

for loop = 0:slice_Size:driverLogKm(end)
    index = index + 1;
    
    current_Limit = interpolateToTheLeft(limitKms, limitSpeeds, loop);
    current_Speed = interpolateLinearly(driverLogKm, driverLogSpeed, loop);
    
    if current_Speed > current_Limit
        illegal_Kms = illegal_Kms + slice_Size;
    end
end

kmsAboveSpeedLimit = illegal_Kms;
percentAboveSpeedLimit = illegal_Kms/driverLogKm(end)*100;
end

