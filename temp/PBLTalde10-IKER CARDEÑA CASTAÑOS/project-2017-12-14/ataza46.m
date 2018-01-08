for i={'n1','a1'}
    for ii={'driver1','driver2'}
    filename= sprintf('%s-%s-log.csv',i{1},ii{1})
    errepideak=dlmread(filename,',',1,0);
    denbora=estimateTime( errepideak(:,1), errepideak(:,2), numSlices);