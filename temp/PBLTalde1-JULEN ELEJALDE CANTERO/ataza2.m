
% 2.ATAZA:
% Script honek grafika bat sortzen du du abiadurak (km/orduko) jatorriarekiko
% distantzien(km) aurka adieraziz.
% Eta informazio hau itzultzen du : biaduraren batazbestekoa, desbiderazio estandarra
% ,minimoa eta maximoa.

id=1;

lehenengoa={'a1','n1'};

bigarrena={'driver1','driver2'};

for i = lehenengoa
    
    for j = bigarrena
        izena=sprintf('%s-%s-log.csv',i{1},j{1});
        data=dlmread(izena);
        distantzia=data(:,1);
        abiadura=data(:,2);
        
      hold on 
      
        subplot(1,2,id);
        plot(distantzia,abiadura)
        title('Distantzia/abiadura')
        xlabel('distantzia1(km)')
        ylabel('abiadura1(m/s)')
        
      hold off
      
        mediaabiadura= mean(abiadura);
        desbideratzeEstandarraabiadura= std(abiadura);
        maxabiadura= max(abiadura);
        minabiadura= min(abiadura);
        fprintf('%s statistics in route %s\n Mean speed: %.2fkm/h (sd:%.2f)\n Min-Max speed: [%.2f, %.2f]',j{1},i{1},mediaabiadura,desbideratzeEstandarraabiadura, minabiadura,maxabiadura)
        
    end 
    
    id=id+1;
end
input('sakatu edozein tekla','s')