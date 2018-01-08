gidaria={'driver1','driver2'};
bidea={'a1','n1'};
for i=1:length(bidea)
  for j=1:length(gidaria)
  filename=sprintf('%s-%s-log.csv',bidea{i},gidaria{j});
  data= dlmread(filename,',');
  time= estimateTime2(data(:,1),data(:,2),100);
  x=toHMS2(time);
  fprintf('Estimated time for %s in route %s:\t%s\n\n',gidaria{j},bidea{i},x);
  end
  end
  input('Sakatu edozein tekla aurrera egiteko: ','s');