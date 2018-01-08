for i={'n1','a1'}
    filename= sprintf('%s-height.csv',i{1})
    errepideak=dlmread(filename,',',1,0);
    mean(errepideak(:,3));
    std(errepideak(:,3));
    max(errepideak(:,3));
    min(errepideak(:,3));
    fprintf('%s = Batazbestekoa: %f.2, desbideratze estandarra: %f.2, maxiamoa: %f.2, minimoa: %f.2',filename,mean,std,max,min)
    end