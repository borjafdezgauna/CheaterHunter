i=1
for Bidea= {'n1','a1'}
    for Gidaria= {'driver1','driver2'}
       fitxategia = sprintf('%s-%s-log.csv', Bidea{1}, Gidaria {1});
       data = dlmread (fitxategia ,',');
       subplot(1,2,i)
       plot(data(:,1),data(:,2))
      title('a1-ean, driver 1 eta driver 2')
       xlabel('abiadura (km/ordu)')
       ylabel('distantzia(km) ')
       legend('driver 1' , 'driver 2')
       hold on
    end
     i=i+1;
     if i == 2
     title('n1-ean, driver 1 eta driver 2')
     end
end
    
saveas ( gcf , 'drivers.png' ) ;