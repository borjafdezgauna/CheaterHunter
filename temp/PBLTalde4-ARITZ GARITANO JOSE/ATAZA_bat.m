%% Errepideen fitxategietako datu guztiak jaso %%
for Errepide_Izena= {'n1', 'a1'}
fitxategia= sprintf ('%s-height.csv',Errepide_Izena{1});
Errepideak_info=dlmread(fitxategia,',',1,0);
%% ----------- Grafikoak ------------- %%

%%-------ALTUERA------%%
subplot(1,2,1)
plot (Errepideak_info(:,4), Errepideak_info(:,3));
hold on
title('Errepideen profila');
xlabel ('Distantzia KM');
ylabel ('Altuera M');

%%------IBILBIDEA ------%
subplot (1,2,2)
plot (Errepideak_info(:,1),Errepideak_info(:,2));
hold on
title('Ibilbideak');
xlabel('Latitudea');
ylabel('Longitudea');

%%  Estadistikak kalkulatu  %%
Batazbestekoa_altuera = mean(Errepideak_info(:,3)); 
Desbiderapena = std (Errepideak_info(:,3));
Max_altuera = max(Errepideak_info(:,3));
Min_altuera = min(Errepideak_info(:,3));  

%%Estadistikak pantailaratu%%
fprintf ('%s route statistics:\n Mean height: %.2f    (sd: %.2f)\n Heigth range: [%.2f , %.2f]\n\n',Errepide_Izena{1}, Batazbestekoa_altuera,Desbiderapena ,Min_altuera, Max_altuera);
end
subplot(1,2,1)
legend ('N1', 'A1')
subplot (1,2,2)
legend ('N1', 'A1')
saveas(gcf,'route-elevations.png')
input('Sakatu edozein tekla jarraitzeko','s');
mainMenu

 
