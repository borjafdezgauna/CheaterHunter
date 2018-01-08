%Hasi aurretik, kontsola garbitu.
clc

%Aldagai bat sortuko dugu, bidea aldatzean subplota ere aldatzeko.
irudiZenb = 1;

  %For begizta bat egingo dugu, bide bakoitza bere aldetik kargatzeko eta grafiko ezberdinetan jartzeko.
  for num={'a1','n1'}

    subplot(1,2,irudiZenb);
    
      %Bide bakoitzaren barruan beste for begizta bat egingo dugu, bide horretan gidari bakoitzaren datuak erabiltzeko.
      for gid=1:2
        
        %Gidari bakoitzaren datuak kargatuko ditugu.
        file=sprintf('%s-driver%d-log.csv',num{1},gid);
        datuak=dlmread(file, ',');
        hold on
      
        %Gidari bakoitzaren datuak grafiko batean bistaratuko ditugu, eta grafikoak behar bezala izendatuko ditugu.
          plot(datuak(:,1),datuak(:,2));
            xlabel('Distantzia (km)')
            ylabel('Abiadura (km/h)')
            title(sprintf('%s bideko abiadurak 2 gidarientzat',num{1}))
        
          %Gidari bakoitzaren datu esanguratsuenak kargatuko ditugu datu basetik, eta kontsolan bistaratuko ditugu, erabiltzaileak ikus ditzan.
          Abiadura=mean(datuak(:,2));
          DesbEst=std(datuak(:,2));
          AbiaMin=min(datuak(:,2));
          AbiaMax=max(datuak(:,2));
        fprintf('%d gidariaren estatistikak %s bidean:\n Batez besteko abiadura: %.2f (Desbiderazio estandarra: %.2f)\n' ,gid, num{1}, Abiadura, DesbEst)
        fprintf(' Abiadura minimoa: %.2f\n Abiadura maximoa: %.2f\n\n', AbiaMin, AbiaMax)
      end 
   
    %Bideen izena kargatzeko for begizta errepikatu aurretik, aldagaiaren balioa aldatuko dugu, bigarren bidearen datuak beste subplot batean erakusteko.
    irudiZenb=2;
    legend('1.Gidaria','2.Gidaria')
   end
