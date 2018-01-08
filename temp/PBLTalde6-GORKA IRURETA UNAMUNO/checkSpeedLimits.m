function[ kmsAboveSpeedLimit,percentAboveSpeedLimit]= checkSpeedLimits(driverLogKm, driverLogSpeed, LimitKms,LimitSpeeds, numSlices)
%% Tarte bakoitzaren distantzia
dx=(driverLogKm(length(driverLogKm))-driverLogKm(1))/numSlices;
kmsAboveSpeedLimit=0;
   %% Kilometroen bektore bat 
  kilometroak=linspace(driverLogKm(1),driverLogKm(length(driverLogKm)), numSlices);
for i=1:length(kilometroak);
  %% Interpolatu egin dugu abiadura eta gainera bere limitea
    interpolatedY = interpolateToTheLeft(LimitKms, LimitSpeeds, kilometroak(i));
     lininterpolatedY=interpolateLinearly(driverLogKm,driverLogSpeed,kilometroak(i));
  %% Baldintza hau betetzen bada hurrengo eragiketa egingo eta behi eta berriro errepikatuko da
  if lininterpolatedY>interpolatedY;
    kmsAboveSpeedLimit=dx+kmsAboveSpeedLimit;
  end
  end
   %% Abiaduraren ehunekoa kalkulatuko dugu
  percentAboveSpeedLimit=(kmsAboveSpeedLimit/(driverLogKm(length(driverLogKm))-driverLogKm(1)))*100;
  end