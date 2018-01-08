clc
%% Erabiltzaileak modu erraz batean ikus dezan testu batean erakutsi eta erabiltzaileari aukerak eskatu
fprintf('####### MENU ########:\n1. Show route plots/statistics\n2. Show driver plots/statistics\n3. Time calculations for each driver/route\n4. Check speed limits\n5. Fuel consumption calculations for each driver/route\n6. Exit\n');
option=input('Choose an option: ');
%% Aukera 6 ez denean hurrengo baldintzak beteko dira eta zenbakiaren arabera ataza bat edo bestea egingo du
while option~=6
if option==1
  Ataza_1
elseif option==2
  Ataza_2
elseif option==3
 Ataza_4
elseif option==4
 Ataza_5
elseif option==5
 Ataza_6
 else
 fprintf('Aukera ezegokia: 1 eta 6 artean egon behar da\n\n');
end
%% Beste aukera bat aukeratzen dugunean aurretik eskatutakoa ezabatuko da
clc
%% Aurretik kalkulatutko datuak, erabiltzaileak modu erraz batean ikus dezan testu batean
fprintf('####### MENU ########:\n1. Show route plots/statistics\n2. Show driver plots/statistics\n3. Time calculations for each driver/route\n4. Check speed limits\n5. Fuel consumption calculations for each driver/route\n6. Exit\n');
option=input('Choose an option: ');
end
