%%Lehenengo datuak irakurri bi for erabiliz

for errepidea={'a1','n1'}
for gidaria={'driver1','driver2'}
    
  
   fitxategia = sprintf('%s-%s-log.csv', errepidea{1},gidaria{1});
   datuak=sprintf('%s-height.csv',errepidea{1});
   
   %%Datuak zutabe bakoitzetik hartu
   %%bidearen datuak(altuera,distantzia)
   kmsDatuak=dlmread(datuak,',',1,0);
   
   routeHeights=kmsDatuak(:,3);
   routeKms=kmsDatuak(:,4);
   
   %%Log-aren datuak(distantzia,abiadura)
   datuakLog=dlmread(fitxategia,',');
   
   logKms=datuakLog(:,1);
   logSpeeds=datuakLog(:,2);
   
  
   numSlices=10000;
  
   
   %%Lehen sortutako funtzioaren bitartez fuel kontsumoa kalkulatu
   [ fuelExpenditure ] =calculateRouteFuelExpenditure(routeKms,routeHeights,logKms,logSpeeds,numSlices );
   fprintf('Analyzing: Driver= %s, Route= %s\nEstimated fuel consumption: %.06f liters of fuel\n\n',driver{1},errepidea{1},fuelExpenditure);
end 
end