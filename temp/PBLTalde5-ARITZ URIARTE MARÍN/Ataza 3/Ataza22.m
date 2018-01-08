for bidea= {'n1' , 'a1'}
    for Gidaria= {'driver1','driver2'}
      fitxategia = sprintf('%s-%s-log.csv', bidea{1}, Gidaria{1});
      data = dlmread (fitxategia, ',');
   Meanspeed=mean(data(:,2));
Desbiazioa=std(data(:,2));
fprintf('% s statistics in route %s:\n''Mean speed: % .2f (sd:% .2f)\n',Gidaria{1}, bidea{1},Meanspeed,Desbiazioa)
Minspeed= min(data(:,2));
Maxspeed= max(data(:,2));
fprintf('Min-max speed: [%.2f ,%.2f]\n',Minspeed, Maxspeed)
    end 
    saveas
end