
for Gidaria= {'driver1','driver2'}
   for Bidea= {'n1','a1'}
       fitxategia = sprintf('%s-%s-log.csv', Bidea{1},Gidaria {1});
       data= dlmread (fitxategia,',') ;
       kms= data(:,1);
       speedKmH= data(:,2); 
       numSlices=10000;
       seconds = estimateTime(kms,speedKmH,numSlices);
       denbora= toHMS(seconds); 
       fprintf('Estimated time for %s in route %s: %s\n',Gidaria{1}, Bidea{1}, denbora)
   end
end

