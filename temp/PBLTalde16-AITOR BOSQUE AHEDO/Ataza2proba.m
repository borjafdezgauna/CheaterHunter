
id=1;
for file={'a1','n1'}
  for drivers={'driver1','driver2'}
   filename=sprintf('%s-%s-log.csv',file{1},drivers{1});
   datuak=dlmread(filename,',');
   %% matrizeak sortu
   abiadura_file_drivers=datuak(:,2);
   distantzia_file_drivers=datuak(:,1);
    
    subplot(1,2,id)
    hold on
    plot(distantzia_file_drivers,abiadura_file_drivers)
    if id==1
    title('Autopista')
    elseif id==2
    title('Errepide Nazionala')
    end
    xlabel('distantzia (km)')
    ylabel('abiadura(km/h)')
    legend('1.gidaria','2.gidaria')
   
    file_drivers_batezbestekoAbiadura=mean(abiadura_file_drivers);
    file_drivers_desbiderazioEstandarra=std(abiadura_file_drivers);
    file_drivers_abiaduramin=min(abiadura_file_drivers);
    file_drivers_abiaduramax=max(abiadura_file_drivers);
    fprintf(' %s-ko estadistikak %s-ko ibilbidean\n Batez besteko abiadura: %0.2f km/h (sd. %0.2f)\n Abiadura min-max: [%0.2f,%0.2f]\n\n',drivers{1},file{1}, file_drivers_batezbestekoAbiadura,file_drivers_desbiderazioEstandarra,file_drivers_abiaduramin,file_drivers_abiaduramax)
  end
  id=id+1;
  
end
legend('1.gidaria','2.gidaria')
