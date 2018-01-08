for route={'a1','n1'}
    
    for driver=1:2
        file=sprintf('%s-driver%d-log.csv',route{1}, driver);
         a=dlmread(file,',');
         v=a(:,2);
         d=a(:,1);
         seconds=estimateTime(d,v,10000);
         HMSeg=toHMS(seconds);
      
        
         fprintf('\nEstimated time for driver%d in route %s: %s\n',driver,route{1},HMSeg)
        
    end
end