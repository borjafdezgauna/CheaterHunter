%% Errepideen fitxategietako datu guztiak jaso %%
grafikoa=1;
for Errepide_Izena= {'n1', 'a1'}
  subplot(1,2,grafikoa)
  for gidaria= 1:2
fitxategia= sprintf ('%s-driver%d-log.csv',Errepide_Izena{1},gidaria);
Gidariak_info=dlmread(fitxategia,',');
%% ----------- Grafikoak ------------- %%
plot (Gidariak_info(:,1), Gidariak_info(:,2));
hold on
title(sprintf('%s errepidea',Errepide_Izena{1}));
xlabel ('Distantzia KM');
ylabel ('Abiadura KM/h');

%%  Estadistikak kalkulatu  %%

Batazbestekoa_abiadura = mean(Gidariak_info(:,2)); 
Desbiderapena = std (Gidariak_info(:,2));
Max_speed = max(Gidariak_info(:,2));
Min_speed = min(Gidariak_info(:,2));  

%%Estadistikak pantailaratu%%
fprintf ('driver%d statistics in route %s \n Mean speed: %.2f    (sd: %.2f)\n Min-Max speed: [%.2f , %.2f]\n\n',gidaria, Errepide_Izena{1},Batazbestekoa_abiadura,Desbiderapena ,Min_speed, Max_speed);
end
grafikoa=grafikoa+1;
end
subplot(1,2,1)
legend ('gidaria1', 'gidaria2')
subplot (1,2,2)
legend ('gidaria1', 'gidaria2')
input('Sakatu edozein tekla jarraitzeko','s')
mainMenu

 
