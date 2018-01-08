function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
m = toMeters(driverLogKm);
mlimit = toMeters(limitKms);
msSpeed = toMetersPerSecond( driverLogSpeed );
msSpeedlimit = toMetersPerSecond( limitSpeeds );
kmsAboveSpeedLimit=zeros;
x = linspace (m(1),m(end),numSlices);
    for j=1:length (x)
        interpolatedY(j)=interpolateLinearly (m,msSpeed,x(j));
        interpolatedlimit (j) = interpolateToTheLeft (mlimit,msSpeedlimit,x(j));
    end
    for i=1:length (x)
        if interpolatedY(i)> interpolatedlimit (i)
            kmslimts(i)=1;
        end
        if interpolatedY(i)<= interpolatedlimit (i)
            kmslimts(i)=0;
        end
        
        kmslimttotal=sum(kmslimts);
        kmsAboveSpeedLimit=(driverLogKm(end)/numSlices)* kmslimttotal;
        percentAboveSpeedLimit=(kmsAboveSpeedLimit/driverLogKm(end))*100;
    end
      
      
end


    
    
    
    
