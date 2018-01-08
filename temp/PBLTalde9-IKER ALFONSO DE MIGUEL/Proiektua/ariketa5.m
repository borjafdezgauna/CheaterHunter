%%Lehenengo datuak irakurri bi for erabiliz

for errepidea={'a1','n1'}
for gidaria={'driver1','driver2'}
    
  
   fitxategia = sprintf('%s-%s-log.csv', errepidea{1},gidaria{1});
   datuak=sprintf('%s-speed-limit.csv',errepidea{1});
   kmsDatuak=dlmread(datuak,';');
   
   limitKms=kmsDatuak(:,1);
   limitSpeeds=kmsDatuak(:,2);
   datuak=dlmread(fitxategia,',');
   driverLogKm=datuak(:,1);
   driverLogSpeed=datuak(:,2);
   numSlices=10000;
   
   %%muga abiaduratik gora igarotako distantzia(km) eta distantzi guztiarekiko ehunekoa
   
   
  [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] =checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices);
  
  %%datuak bistaratu eta isuna  jartzeko arriskua adierazi
   if percentAboveSpeedLimit>=10
   arriskua= sprintf('HIGH INFRACTION RISK') ;
     fprintf('Analyzing:  Driver= %s, Route= %s\n %s: Kms above the speed limit=%.02f (%.02f%% of the route)\n\n',gidaria{1},errepidea{1},arriskua,kmsAboveSpeedLimit,percentAboveSpeedLimit );
   elseif percentAboveSpeedLimit<10 && percentAboveSpeedLimit>0
       arriskua=sprintf('Mild infraction risk');
         fprintf('Analyzing:  Driver= %s, Route= %s\n %s: Kms above the speed limit=%.02f (%.02f%% of the route)\n\n',gidaria{1},errepidea{1},arriskua,kmsAboveSpeedLimit,percentAboveSpeedLimit );
   else 
      
         fprintf('Analyzing:  Driver= %s, Route= %s\n No risk of infraction\n\n',gidaria{1},errepidea{1});
 
   end
end

end
input('sakatu enter programa amaitzeko');