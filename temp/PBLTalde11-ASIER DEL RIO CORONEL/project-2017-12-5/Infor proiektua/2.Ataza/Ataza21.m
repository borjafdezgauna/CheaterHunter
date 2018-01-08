i=1;
errepidea={'n1', 'a1'};
gidaria={'1','2'};
for x=errepidea
for y=gidaria
    gidarieninf= sprintf('%s-driver%s-log.csv', x{1} ,y{1});
    abiadurainformazioa= dlmread(gidarieninf , ',');


 subplot (1,2,i);
  hold on;
  plot(abiadurainformazioa(:,1),abiadurainformazioa(:,2));
  xlabel('distantzia (km)');
  ylabel('abiadura (km/h)');
  title('N1 errepideko gidarien abiadura');
  legend('Lehenengo gidariaN1','Bigarren gidariaN1');
  hold on;
 
end
   i = i+1;
  if i==2
  title('A1 errepideko gidarien abiadura');
  end
end