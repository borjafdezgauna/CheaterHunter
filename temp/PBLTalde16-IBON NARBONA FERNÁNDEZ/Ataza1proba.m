for file={'a1','n1'}
filename=sprintf('%s-height.csv',file{1});
datuak=dlmread(filename,',',1,0);
%% matrizeak sortu
longitudea_file=datuak(:,2);
latitudea_file=datuak(:,1);
altuera_file=datuak(:,3);
distantzia_file=datuak(:,4);

%% grafikak
subplot(1,2,1)
hold on
plot(distantzia_file,altuera_file)
title('Ibilbideak')
xlabel('distantzia (km)')
ylabel('altuera (m)')
subplot(1,2,2)
hold on
plot(longitudea_file,latitudea_file)
title('Bideak')
xlabel('longitudea')
ylabel('latitudea')

file_batezbestekoAltuera=mean(altuera_file);
file_desbiderazioEstandarra=std(altuera_file);
file_altueramin=min(altuera_file);
file_altueramax=max(altuera_file);

fprintf(' %s-ko bidearen estadistikak:\n Batez besteko altuera: %0.2f (sd: %0.2f)\n Altueraren tarteak: [%0 2f, %0.2f]\n\n',file{1},file_batezbestekoAltuera,file_desbiderazioEstandarra,file_altueramin,file_altueramax)

end
saveas(gcf,'route-elevations.png')






