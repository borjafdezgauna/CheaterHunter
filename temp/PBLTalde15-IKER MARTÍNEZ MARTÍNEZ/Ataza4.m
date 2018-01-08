clc

%%interpolazioa zenbat tarterekin egin nahi duen galdetzen diogu erabiltzaileari
tarteak=input('Sartu estimazioa egiteko nahi duzun tarte kopurua: ');

%%bi for erabiliko ditugu ariketak errepide eta gidari ezberdinekiko garatzeko
for errepidea={'a','n'}
  for gidaria={'driver1','driver2'}
        
    fitxategia=sprintf('%s1-%s-log.csv',errepidea{1},gidaria{1});   %%lau logak aldagai ezberdinetan gordeko ditugu
    Fitxategia=dlmread(fitxategia,',');   %%logak irakurriko ditugu
    denbora=estimateTime(Fitxategia(:,1),Fitxategia(:,2),tarteak);    %%estimateTime funtzioa erabili denbora kalkulatzeko 
    estimazioa=SegtoHMS(denbora);   %%estimazioa eskatutako formatuan jarri oo:mm:ss
    
    %%lorturiko estimazioen denborak bistaratu errepide eta gidari bakoitzeko
    fprintf('Estimated time for %s in route %s1 is: %s\n',gidaria{1},errepidea{1},estimazioa)
  end
end