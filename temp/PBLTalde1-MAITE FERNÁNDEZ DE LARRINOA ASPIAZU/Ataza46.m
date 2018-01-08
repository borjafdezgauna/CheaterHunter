%4.Ataza:
% Funtzio honek egindako denbora kalkulatzen du:
lehenengoa={'a1','n1'};

bigarrena={'driver1','driver2'};

for i = lehenengoa
    
    for j = bigarrena
         izena=sprintf('%s-%s-log.csv',i{1},j{1});
         data=dlmread(izena);
         distantzia=data(:,1);
         abiadura=data(:,2);
         estimatedTime=estimateTime(distantzia,abiadura,10000);
         Time1=toHMS(estimatedTime);
         fprintf('Estimated time for %s in route %s: %s\n',j{1},i{1},Time1)
    end
    
       
end
input('sakatu edozein tekla','s')