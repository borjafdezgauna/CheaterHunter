
% 1.ATAZA:
% Script honek bi bideetako erlebeak aaztertzen ditu eta
% ibilbidearen estadistikak iztultzen digu ( mean height,height range):
% Bi grafika bistaratzen ditu ibilbidea aztertzeko: altuera distantziaren menpekoa eta bestea
% longitudea latitudearen menpekoa.

lehenengoa={'a1','n1'};

for i=lehenengoa
    
    izena=sprintf('%s-height.csv',i{1});
      data=dlmread(izena,',',1,0);
      latitude=data(:,1);
       longitud=data(:,2);
       altuera=data(:,3);
       distantzia=data(:,4);
       
    hold on 
    
       subplot(2,1,1);
       plot(distantzia,altuera)
       title('errepideen erliebeak')
       xlabel('distantzia(km)')
       ylabel('altuera(km)')
       
    hold off
    hold on
    
       subplot(2,1,2);
       plot(latitude,longitud)
       title('errepideen bideak')
       xlabel('latituidea')
       ylabel('longitudea')
       
    hold off
    
      saveas(gcf,'route-elevations.png')
      mediaAltuera= mean(altuera);
      desbideratzeEstandarraAltuera= std(altuera);
      maxAltuera= max(altuera);
      minAltuera= min(altuera);
      fprintf('%s route stadistics:\n mean height:%.2f(sd:%.2f)\n height range:[%.2f, %.2f]\n',i{1},mediaAltuera,desbideratzeEstandarraAltuera,maxAltuera, minAltuera);
end
input('sakatu edozein tekla','s')


