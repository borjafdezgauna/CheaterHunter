%%bi subplot sortzeko n-ri balioak emango dizkiogu, buelta bakoitzeko grafiko bat sor dadin errepide bakoitzarekin 
n = 1;

%%Lehenengo datuak irakurri bi for erabiliz

for errepidea={'a1','n1'}
    
    subplot(1,2,n);
for gidaria={'driver1','driver2'}
  
   fitxategia = sprintf('%s-%s-log.csv',errepidea{1}, gidaria{1});
   
    %%Datu fitxategiak irakurri
    abiadura=dlmread(fitxategia,',');
    %% grafikoak sortu
    hold on;
    
    plot(abiadura(:,1),abiadura(:,2));
 title(['Abiadura disatantziaren funtzioan (',errepidea{1},')']);
    xlabel('distantzia(km)');
    ylabel('abiadura(km/h)'); 
    
    fprintf('%s statistics in route %s:\nMean speed: %.02f (sd. %.02f)\nMin-Max speed: [%.02f, %.02f]\n\n',gidaria{1},errepidea{1},mean(abiadura(:,2)),std(abiadura(:,2)),min(abiadura(:,2)),max(abiadura(:,2)));
    
    end
    n = n +1;
  end
  
  
   
input('sakatu enter jarraitzeko');