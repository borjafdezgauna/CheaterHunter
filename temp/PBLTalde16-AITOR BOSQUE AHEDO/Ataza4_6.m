%Konbinazio guztiak lortu ahal izateko
for file={'n1','a1'}
  for drivers={'driver1','driver2'}
   filename=sprintf('%s-%s-log.csv',file{1},drivers{1});
   %%Datuak irakurri
   datuak=dlmread(filename,',');
   %%Lortutako datuekin matrizeak sortuko ditugu
   abiadura_file_drivers=datuak(:,2);
   distantzia_file_drivers=datuak(:,1);
   %%Gidari eta bide bakoitzarekiko denbora kalkulatu
   segunduak_file_drivers=estimateTime(distantzia_file_drivers,abiadura_file_drivers, 10000);
   ordu_min_seg_file_drivers=toHMS(segunduak_file_drivers);
   %%Kalkulatutako denbora bistaratu
   fprintf('Estimated time for %s in route %s: %s\n',drivers{1},file{1},ordu_min_seg_file_drivers)
   end
end   