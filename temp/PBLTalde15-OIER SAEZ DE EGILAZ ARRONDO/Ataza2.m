clc
x=1;  %%x deifinitu dugu subplot desberdinak kode berarekin sortu ahal izateko errepikatu gabe
for errepidea={'a','n'}   %%bi errepide ezberdinekin berdina ez egiteko for batean bildu ditugu
  subplot(1,2,x)    %%sublota sortu dugu
  for gidaria={'driver1','driver2'}   %%bi gidari ezberdinekin berdina ez egiteko for batean bildu ditugu

    
    fitxategia=sprintf('%s1-%s-log.csv',errepidea{1},gidaria{1});   %%fitxategiaren izena aldagai batean gorde dugu
    Fitxategia=dlmread(fitxategia,',');   %%fitxategia irakurri eta matrize batean gorde dugu
    
    hold on   %%grafikoak aldi berean ikusi ahal izateko
    plot(Fitxategia(:,1),Fitxategia(:,2));     %grafikoaren aldagaiak finkatuz grafikoa irudikatu dugu
    title(sprintf('%s1 errepidea',errepidea{1}));   %%titulua jarri dugu grafiko bakoitzeko egokituaz
    xlabel('Distantzia(km)');   %%grafikoko ardatzak izendatu ditugu
    ylabel('Abiadura(km/h)');
    
    batezbestekoabiadura=mean(Fitxategia(:,2));     %%batezbestekoa mean-ez kalkulatu dugu
    desbiderazioestandarra=std(Fitxategia(:,2));    %%desbidazio tipikoa kalkulatzeko std erabili dugu
    abiaduramax=max(Fitxategia(:,2));   %%fitxategiko zutabe egokiko maximoa kalkulatu dugu
    abiaduramin=min(Fitxategia(:,2));   %%fitxategiko zutabe egokiko minimoa kalkulatu dugu
    
    %%kalkulatutako datuak bistaratzeko kodea idatzi dugu
    fprintf('\n%s estatistikak %s1 errepidean\nBatazbesteko abiadura: %.2f Km/h (sd. %.2f)\nAbiadura Min-Max: [%.2f,%.2f]\n\n',gidaria{1},errepidea{1},batezbestekoabiadura,desbiderazioestandarra,abiaduramin,abiaduramax);
  end
  
  %%grafikoan leyendak jarri ditugu
  legend('Gidari1','Gidari2')
  x=x+1;    %%subplot desberdinak egin ahal izateko for-a erabiliz
end
