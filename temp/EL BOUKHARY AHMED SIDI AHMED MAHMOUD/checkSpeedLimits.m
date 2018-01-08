function[ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
    longDriver=length(driverLogKm);
    distCheck=(driverLogKm(longDriver)-driverLogKm(1))/numSlices;
    i=0;
    kmsAboveSpeedLimit=0;
    while i<=driverLogKm(longDriver)
        velLim=interpolateToTheLeft(limitKms,limitSpeeds,i);
        velCon=interpolateLinearly(driverLogKm,driverLogSpeed,i);
        if (velLim < velCon)
            kmsAboveSpeedLimit=kmsAboveSpeedLimit+distCheck;
        end
        i=i+distCheck;
    end
    percentAboveSpeedLimit=(kmsAboveSpeedLimit/(driverLogKm(longDriver)-driverLogKm(1)))*100;
end
