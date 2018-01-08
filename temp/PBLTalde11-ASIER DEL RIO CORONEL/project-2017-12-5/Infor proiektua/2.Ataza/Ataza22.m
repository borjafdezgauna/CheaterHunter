i=1;
errepidea={'n1', 'a1'};
gidaria={'1','2'};
for x=errepidea
for y=gidaria
    gidarieninf= sprintf('%s-driver%s-log.csv', x{1} ,y{1});
    abiadurainformazioa= dlmread(gidarieninf , ',');


media=mean(abiadurainformazioa(:,2));
desbiderapena=std(abiadurainformazioa(:,2));
minimo=min(abiadurainformazioa(:,2)); 
maximo=max(abiadurainformazioa(:,2));

fprintf('%s gidariak %s errepidean dituen estadistikak: \n Batasbezteko habiadura: %.2f km/h (desbideratze estandarra, %.2f) \n Abiadura Min-Max: [%.2f , %.2f]\n',y{1},x{1},media,desbiderapena,minimo,maximo);
end
   i = i+1;
  if i==2
  
  end
end




