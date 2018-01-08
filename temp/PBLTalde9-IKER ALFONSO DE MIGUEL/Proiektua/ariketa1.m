
for errepidea={'a1','n1'}
   fitxategia = sprintf('%s-height.csv', errepidea{1});
    %%Datu fitxategiak irakurri
    datuak=dlmread(fitxategia,',',1,0);
    %%bi grafikoak sortu
    subplot(1,2,1);
    plot(datuak(:,4),datuak(:,3));
    title('Altuera distantziaren funtzioan');
    xlabel('distantzia(km)');
    ylabel('altuera(m)'); 
    hold on
   %%bigarren subplota
    subplot(1,2,2);
    plot(datuak(:,1),datuak(:,2));
    hold on
    title('longitudea latitudearen aurka');
    xlabel('latitudea');
    ylabel('longitudea');
    %%gordetzeko
    saveas(gcf,'route-elevations.png');
    
    fprintf('%s route statistics:\nMean height: %.02f (sd: %.02f)\nHeight range: [%.02f, %.02f]\n\n',errepidea{1},mean(altuera(:,3)),std(altuera(:,3)),min(altuera(:,3)),max(altuera(:,3)));

end
input('sakatu enter jarraitzeko');