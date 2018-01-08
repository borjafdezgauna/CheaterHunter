clc
for i={'a','n'}   %%bi errepide ezberdinekin berdina ez egiteko for batean bildu ditugu
fitxategia=sprintf('%s1-height.csv',i{1});    %%fitxategiaren izena aldagai batean gorde dugu
Fitxategia=dlmread(fitxategia,',',1,0);   %%fitxategia irakurri eta matrize batean gorde dugu lehen errenkada saltatuz

%%orain bi grafiko egingo ditugu batera agertzen direlarik
subplot(1,2,1)    %%honekin lehen grafikoa osatuko dugu, ezkerrean doana
hold on   %%bi grafikoak aldi berean ikusi ahal izateko
plot(Fitxategia(:,4),Fitxategia(:,3));    %grafikoaren aldagaiak finkatuz grafikoa irudikatu dugu
title('Altuerak');    %grafikoari izenburu bat jarri diogu
xlabel('Distantzia(km)');   %%grafikoko ardatzak izendatu ditugu
ylabel('Altuera(m)');

subplot(1,2,2)    %%honekin bigarren grafikoa osatuko dugu, eskuinean doana
hold on   %%bi grafikoak aldi berean ikusi ahal izateko
plot(Fitxategia(:,2),Fitxategia(:,1));     %grafikoaren aldagaiak finkatuz grafikoa irudikatu dugu
title('Ibilbidea');   %grafikoari izenburu bat jarri diogu
xlabel('Longitudea(º)');    %%grafikoko ardatzak izendatu ditugu
ylabel('Latitudea(º)');

batezbestekoaltuera=mean(Fitxategia(:,3));    %%batezbestekoa mean-ez kalkulatu dugu
desbiderazioestandarra=std(Fitxategia(:,3));    %%desbidazio tipikoa kalkulatzeko std erabili dugu
altueramax=max(Fitxategia(:,3));    %%fitxategiko zutabe egokiko maximoa kalkulatu dugu
altueramin=min(Fitxategia(:,3));    %%fitxategiko zutabe egokiko minimoa kalkulatu dugu


%%kalkulatutako datuak bistaratzeko kodea idatzi dugu
fprintf('\n%s1 ibilbidearen estatistikak: \nBatezbesteko altuera: %.2f  (sd: %.2f)\nAltuera tartea: [%.2f, %.2f]\n\n',i{1},batezbestekoaltuera,desbiderazioestandarra,altueramax, altueramin);  
end

%%grafikatutako irudia png artxibo batean gorde dugu
saveas(gcf,'route-elevations','png')


