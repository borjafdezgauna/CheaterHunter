%Hasi aurretik, kontsola garbitu.
clc
  
  %Bi for begizta erabiliko ditugu artxiboen izenak sortu eta kargatzeko.
  for num={'a1','n1'}
    for gid=1:2
      file=sprintf('%s-driver%d-log.csv',num{1},gid);
      datuak=dlmread(file, ',');
      
      %Datuak zutabetan daudenez, buelta emango diegu, funtzioetan egoki sar daitezen.
      kilometroakErrenkada=rot90([datuak(:,1)]);
      abiaduraErrenkada=rot90([datuak(:,2)]);
      
      %Artxibo bakoitzeko datuak aurrez sortutako funtzioetan sartuko ditugu, emaitzak lortzeko.
      denboraTotala=estimateTime(kilometroakErrenkada,abiaduraErrenkada,1000);
      denboraOrdutan=toHMS (denboraTotala);
      
      %Azkenik, lortutako emaitzak pantailan bistaratuko ditugu.
     fprintf('%d gidariaren denbora estimatua %s bidean:%s\n' ,gid,num{1},denboraOrdutan)
    end
   end