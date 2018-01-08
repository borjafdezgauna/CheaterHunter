gidaria={'driver1','driver2'};
bidea={'a1','n1'};
for i=1:length(bidea)
  for j=1:length(gidaria)
  filename=sprintf('%s-%s-log.csv',bidea{i},gidaria{j});
  data= dlmread(filename,',');
  subplot(1,2,i)
  hold on
  plot(data(:,1),data(:,2))
  subplot(1,2,i)
  hold on
  plot(data(:,1),data(:,2))
  AbiadurarenMedia=mean(data(:,2));
  DesbiderazioEstandarra=std(data(:,2));
  A=min(data(:,2));
  B=max(data(:,2));
  fprintf('%s statistics in route %s:\nMean speed: %.2f\t(sd:%.2f)\nMin,Max speed:[%.2f,\t%.2f]\n\n',gidaria{j},bidea{i}, AbiadurarenMedia, DesbiderazioEstandarra,A,B)
  end
end
input('Sakatu edozein tekla aurrera egiteko: ','s');