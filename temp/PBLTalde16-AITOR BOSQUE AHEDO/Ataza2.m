%Konbinazio guztiak sortu
id=1;
for file={'a1','n1'}
  for drivers={'driver1','driver2'}
   filename=sprintf('%s-%s-log.csv',file{1},drivers{1});
   datuak=dlmread(filename,',');
   
   %% Matrizeak sortu
   distantzia_file_drivers=datuak(:,1);
   abiadura_file_drivers=datuak(:,2);
   
   %%Grafikak sortu
    subplot(1,2,id)
    hold on
    plot(distantzia_file_drivers,abiadura_file_drivers)
    %%Bi bideak bereiztu
    if id==1
    title('Autopista')
    elseif id==2
    title('Errepide Nazionala')
    end
    xlabel('Distantzia (km)')
    ylabel('Abiadura(km/h)')
    
   %%Datuak kalkulatu
    file_drivers_batezbestekoAbiadura=mean(abiadura_file_drivers);
    file_drivers_desbiderazioEstandarra=std(abiadura_file_drivers);
    file_drivers_abiaduramin=min(abiadura_file_drivers);
    file_drivers_abiaduramax=max(abiadura_file_drivers);
    
    %%Datuak bistaratu
    fprintf(' %s-ko estadistikak %s-ko ibilbidean\n Batez besteko abiadura: %0.2f km/h (sd. %0.2f)\n Abiadura min-max: [%0.2f,%0.2f]\n\n',drivers{1},file{1}, file_drivers_batezbestekoAbiadura,file_drivers_desbiderazioEstandarra,file_drivers_abiaduramin,file_drivers_abiaduramax)
  end
  id=id+1;
  %%Grakioetan gidariak desberdintzeko
  legend('1.gidaria','2.gidaria')
end

