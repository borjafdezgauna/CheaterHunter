for Errepide_Izena= {'n1', 'a1'}
  for gidaria= 1:2
    %%4 log fitxategien informazioa jaso%%
    fitxategia= sprintf ('%s-driver%d-log.csv',Errepide_Izena{1},gidaria);
    Gidariak_info=dlmread(fitxategia,',');
    %distantziak Lehenengo zutabea  eta abiadurak bigarrena direla ezarri eta nahi dugun zehaztasuna adierazi numSlices kopuruarekin%%
    kms=Gidariak_info(:,1);
    speedKmH=Gidariak_info(:,2);
    numSlices=10000;
    %%kalkulatu denbora eta formatu egokian adierazi%%
    [estimatedTime] = estimateTime (kms, speedKmH, numSlices);
    [hms] = toHMS (estimatedTime);
    fprintf('Estimated time for driver%d in route %s:  %s\n',gidaria,Errepide_Izena{1},hms)
  end
end
input('Sakatu edozein tekla jarraitzeko','s');
mainMenu
