%%Lehenengo datuak irakurri bi for erabiliz

for errepidea ={'a1','n1'}
for gidaria={'driver1','driver2'}
   
   fitxategia = sprintf('%s-%s-log.csv',errepidea{1}, gidaria{1});
   
   datuak=dlmread(fitxategia,',');
   kms=datuak(:,1);
   abiadura=datuak(:,2);
   
   %%aurreko atazetan sortutako funtzioak erabiliz denbora kalkulatu eta
   %%erloju formatura pasako dugu
   
   [denbora]=estimateTime(kms,abiadura,10000);
   [erlojua]=toHMS(denbora);
  
    %%Emaitzak bistaratu
    
 fprintf('Estimated time for %s in route %s : %s\n',gidaria{1},errepidea{1},erlojua);
   end
   
   end
   input('sakatu ENTER programa amaitzeko');