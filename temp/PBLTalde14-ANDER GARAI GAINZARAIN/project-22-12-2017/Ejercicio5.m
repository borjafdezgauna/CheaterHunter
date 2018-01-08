numSlices=100000; %NumSlices balioa eman
for route={'a1','n1'} %a1 eta n1 testuak banan banan hartu ditzan
    for driver={'1','2'} %1 eta 2 driver-ak banan banan hartu ditzan
        
        file=sprintf('%s-driver%s-log.csv', route{1}, driver{1});  %artxiboen izenak gordetzeko (route stream-a denez, {1} jarri behar)
        file2=sprintf('%s-speed-limit.csv', route{1}); %artxiboen izenak gordetzeko (route stream-a denez, {1} jarri behar)
            
            m1=dlmread(file,',',0,0);  %Lehen sortu ditugun artxiboen izenak irakurri
            m2=dlmread(file2,';',0,0); %Lehen sortu ditugun artxiboen izenak irakurri
             %Banan banan zutabe bakoitzari dagokion izena esleitzea
            driverLogKm=m1(:,1); 
            driverLogSpeed=m1(:,2);
            limitKms=m2(:,1);
            limitSpeeds=m2(:,2);
            
            
        [kmsAboveSpeedLimit, percentAboveSpeedLimit] = checkSpeedLimits( driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices);
            
        %Aldagai guztiak zeintzuk diren ematen da, gero funtzioa
        %exekutatzen da eta amaieran hasieran definitutako bi balioen
        %amaitzak ematen dira.
            
                if percentAboveSpeedLimit <1 %baldintza jartzen da (gure programa zehatzagoa denez ematen diogu 1 balioa 0'00x ematen digulako 0 ezean)
                 
                    fprintf('\nAnalyzing: Driver=driver%s, Route=%s\n No risk of infraction. \n', driver{1}, route{1})
                    %Eskatzen digun formatoa BISTARATZEKO, balioak lehendik kalkulatutako balio oro izango dira, eta ordena egokian sartu behar dira.
            
                elseif percentAboveSpeedLimit > 0 && percentAboveSpeedLimit <= 10 %bestela zer egin behar den
                    
                    fprintf('\nAnalyzing: Driver=driver%s, Route=%s\n Mild infraction risk: Kms above the speed limit= %.2f (%.2f percent of the route) \n',driver{1},route{1},kmsAboveSpeedLimit, percentAboveSpeedLimit)
                
                elseif percentAboveSpeedLimit > 10 %bestela bete behar den baldintza
                    
                    fprintf('\nAnalyzing: Driver=driver%s, Route=%s\n HIGH INFRACTION RISK: Kms above the speed limit= %.2f (%.2f percent of the route) \n',driver{1}, route{1},kmsAboveSpeedLimit, percentAboveSpeedLimit)
                
                end
                
    end 
end