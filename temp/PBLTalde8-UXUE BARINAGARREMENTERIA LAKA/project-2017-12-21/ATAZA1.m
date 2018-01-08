izena={'a1','n1'};
for i=1:length(izena)
  filename=sprintf('%s-height.csv',izena{i});
  data= dlmread(filename,',',1,0);
  subplot(1,2,1)
  hold on
  plot(data(:,4),data(:,3))
  subplot(1,2,2)
  hold on
  plot(data(:,2),data(:,1))
  AltuerarenMedia=mean(data(:,3));
  DesbiderazioEstandarra=std(data(:,3));
  A=min(data(:,3));
  B=max(data(:,3));
  fprintf('%s route statistics:\nMean height: %.2f\t(sd:%.2f)\nHeight range:[%.2f,\t%.2f]\n\n',izena{i}, AltuerarenMedia, DesbiderazioEstandarra,A,B)
  end
  input('Sakatu edozein tekla aurrera egiteko: ','s');