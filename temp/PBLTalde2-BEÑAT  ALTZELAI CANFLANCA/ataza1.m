%Hasi aurretik, kontsola garbitu.
clc

  %For begizta erabiliko dugu, bide bakoitzaren datuak kargatu eta bistaratzeko.
  for num={'a1','n1'}
    
     %Hasteko, fitxategien datuak kargatuko ditugu.
     file=sprintf('%s-height.csv',num{1});
     datuak=dlmread(file, ',',1,0);

     %Gero, datu horiek  bi grafikotan  bistaratuko ditugu, eta grafikoak behar bezala izendatuko ditugu.
     
     %Distantzia eta altitudea:
     subplot (1,2,1);
      hold on
      plot (datuak(:,4),datuak(:,3))
      title('A1 eta N1-eko altuerak')
      xlabel('Distantzia (km)')
      ylabel('Altitudea (m)')
      
     %Longitudea eta latitudea:
     subplot (1,2,2);
      hold on
      plot (datuak(:,2),datuak(:,1))
      title('A1 eta N1-eko ibilbideak')
      xlabel ('Longitudea')
      ylabel ('Latitudea')

     %Ondoren, datu basetik datu esaguratsuak aterako ditugu, eta kontsolan bistaratuko ditugu, erabiltzaileak ikus ditzan.
     Altitudea=mean(datuak(:,3));
     DesbEst=std(datuak(:,3));
     AltMin=min(datuak(:,3));
     AltMax=max(datuak(:,3));
     
    fprintf('%s bideko estatistikak:\n Batez besteko altitudea: %.2f (Desbiderazio estandarra: %.2f)\n' ,num{1}, Altitudea, DesbEst)
    fprintf(' Altuera minimoa: %.2f\n Altuera maximoa: %.2f\n\n', AltMin, AltMax)
  end 
  
  %Azkenik, sortu dugun grafikoa png motako irudi bezala gordeko dugu.

saveas(gcf,'route-elevations.png')
