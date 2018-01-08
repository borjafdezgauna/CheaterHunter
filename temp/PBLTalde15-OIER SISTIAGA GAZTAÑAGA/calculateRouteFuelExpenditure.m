function  [ fuelExpenditure ]=calculateRouteFuelExpenditure(routeKms,routeHeights,logKms,logSpeeds,numSlices )
routeMs= toMeters(routeKms);
logMs=toMeters(logKms);
logSpeeds= toMetersPerSecond(logSpeeds);
diferentzia=logMs(end)/numSlices;
fuelExpenditure=0;
for i=linspace(logMs(1),logMs(end),numSlices)
    if i~=0
    vf=interpolazioa(logMs,logSpeeds,i);
    v0=interpolazioa(logMs,logSpeeds,i-0.001);
    t=0.001/((vf+v0)/2);
    a=(vf-v0)/t;
    altAldaketa=interpolazioa(routeMs,routeHeights,i)-interpolazioa(routeMs,routeHeights,i-0.001);
    theta=asin(altAldaketa/0.001);
    Kontsumoa=calculateFuelExpenditure(vf,a,theta,diferentzia);
    fuelExpenditure=fuelExpenditure+Kontsumoa;
    end
end
end
















































%%Hona iritzi bazara, ariketak zuzentzen ez zara aspertzen. Jarri hamar bat
%% #easteregg
%% Errenkada zenbakia kasualitatea da ;P
