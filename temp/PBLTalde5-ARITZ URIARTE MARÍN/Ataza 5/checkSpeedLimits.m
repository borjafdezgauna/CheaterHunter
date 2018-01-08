function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices) 
if driverLogSpeed <= limitSpeeds
    kmsAboveSpeedLimit = 0
end
kmsAboveSpeedLimit= driverLogKm*driverLogSpeed - limitSpeeds
percentAboveSpeedLimit= kmsAboveSpeedLimit/limitSpeeds *100
end
