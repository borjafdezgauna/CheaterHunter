clc
numSlices=input('Sartu estimazioa egiteko nahi duzun tarte kopurua: ');
fprintf('\n')
for errepidea={'a','n'}
    fitxategia1=sprintf('%s1-height.csv',errepidea{1});
    Fitxategia1=dlmread(fitxategia1,',',1,0);
  
  
  for gidaria={'driver1','driver2'}
    fitxategia2=sprintf('%s1-%s-log.csv',errepidea{1},gidaria{1});
    Fitxategia2=dlmread(fitxategia2,',');
    KontsumoTotala=calculateRouteFuelExpenditure(Fitxategia1(:,4),Fitxategia1(:,3),Fitxategia2(:,1),Fitxategia2(:,2),numSlices);
    fprintf('Analyzing: Driver= %s, Route=%s1\n',gidaria{1},errepidea{1})
    fprintf('Estimated fuel consumption: %.2f liters of fuel\n\n',KontsumoTotala)
  end
end