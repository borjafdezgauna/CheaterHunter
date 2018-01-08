function  totalFuelExpenditure = calculateRouteFuelExpenditure(routeKms, routeHeights, logKms, logSpeeds, numSlices)

%aldagaiak ezarri
    logM = toMeters(logKms);
    logS = toMetersPerSecond(logSpeeds);
    routeM = toMeters(routeKms);
    routeH = routeHeights;
    theta=0;
    a=0;
    v=0;
    d=0;
    fuelExpenditure=0;
    totalFuelExpenditure=0;
    vrh=[];
    vls=[];
    pos=1;

    for a=linspace(min(logM), max(logM), numSlices)
        
        %interpolazioak atera eta vektoreetan gorde
        rh=interpolazioa(routeM, routeH, a);
        vrh=[vrh rh];
        ls=interpolazioa(logM, logS, a);
        vls=[vls ls];
           
        %interpolazioaren arabera sailkatu    
        if pos==1
            
            theta=0;
            v=0;
            a=0;
            d=0;
        
        elseif pos==2
          
            theta = atan(vrh(2)/(max(routeM)/numSlices));
            d=max(logM)/numSlices;
            v=0;
            a=vls(2);
              
        else
            
            theta = atan((vrh(pos) - vrh(pos-1))/(max(routeM)/numSlices));
            d = max(logM)/numSlices;
            v = vls(pos-1);      
            t=d/v;
            a = (vls(pos)-vls(pos-1))/t;
       
        end
        
        %fuel zatika kalkulatu eta bertatik totala lortu
        fuelExpenditure = calculateFuelExpenditure(v,a,theta,d);
        totalFuelExpenditure = totalFuelExpenditure + fuelExpenditure;
        pos=pos+1;
    end
end