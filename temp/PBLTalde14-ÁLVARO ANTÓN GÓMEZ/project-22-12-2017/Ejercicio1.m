clear
for filename={'a1','n1'} %a1 eta n1 testuak banan banan hartu ditzan
file=sprintf('%s-height.csv', filename{1}); %artxiboen izenak gordetzeko (filename stream-a denez, {1} jarri behar
   
    m=dlmread(file,',',1,0); %Lehen sortu ditugun artxiboen izenak irakurri
    %Banan banan zutabe bakoitzari dagokion izena esleitzea
    
     vla=m(:,1);
     vlo=m(:,2);
     vh=m(:,3);
     vd=m(:,4);
     
    subplot(1,2,1) %grafikoak lehenengo bata eta gero bestea ager daitezen, 1x2 matrize bat itxuratuz
        hold on %lehenengo subplotean bi grafikoak aldi berean ager daitezen
            plot(vd, vh); %vd(x) eta vh(y) grafikatzeko
            title('Altuera-Distantzia') %grafikoari titulua jartzeko
            xlabel('distantzia') %x eta y ardatzei izena emateko
            ylabel('altuera') %x eta y ardatzei izena emateko
        hold off
        
    subplot(1,2,2); %grafikoak lehenengo bata eta gero bestea ager daitezen, 1x2 matrize bat itxuratuz, eta biharren plot hau hautatuz
        hold on %bigarren subplotean bi grafikoak aldi berean ager daitezen
            plot(vlo, vla); %vlo(x) eta vla(y) grafikatzeko
            title('Latitudea-Longitudea') %grafikoari titulua jartzeko
             xlabel('longitudea') %x eta y ardatzei izena emateko
            ylabel('latitudea') %x eta y ardatzei izena emateko
        hold off
        
    medA=mean(vh); %vh-ren bataz bestekoa ateratzeko
    minA=min(vh); %vh-ren minimoa ateratzeko
    maxA=max(vh); %vh-ren maximoa bataz bestekoa ateratzeko
    stdA=std(vh); %vh-ren desbiderazioa ateratzeko

fprintf('%s route statistics\n Mean height: %.2f (sd: %.2f)\n Height range: [%.2f,%.2f]\n\n', filename{1}, medA, stdA, minA, maxA)
%Eskatzen digun formatoa BISTARATZEKO, balioak lehendik kalkulatutako balio oro izango dira, eta ordena egokian sartu behar dira.
end
            saveas(gcf, 'route-elevations.png'); %artxiboa nahi dugun formatoan gordetzeko
            

