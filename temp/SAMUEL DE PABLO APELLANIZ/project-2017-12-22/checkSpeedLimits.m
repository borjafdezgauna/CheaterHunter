function [v,w] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices) 
v=[]
w=[]
for i=driverLogKm
    limitsPerKm=interpolateToTheLeft(limitKms,limitSpeeds,i); 
   v=[v limitsPerKm] 
end
j=2
while driverLogSpeed(j)>v(j)
   j=j+1
        w=[w driverLogKm(j)]
    end
end
    
    
%kmsAboveSpeedLimit=

%percentAboveSpeedLimit=(kmsAboveSpeedLimit/driverLogKm(end))*100


