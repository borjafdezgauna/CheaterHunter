%%Pantaila ezabatu%%
clc
%%Aurkibidea bistaratu
fprintf('####### MENU #######\n 1. Show route plots/statistics\n 2. Show driver plots/statistics\n 3. Time calculations for each driver/route\n 4. Check speed limits\n 5. Fuel consumption calculations for each driver/route\n 6. Exit\n')
%%zenbaki bat eskatu%%
zenbakia=input('Choose an option:' );
%%Erabiltzaileak aukeratutako zenbakiaren arabera, dagokion agindua exekutatu%%
while zenbakia ~=6
 if  zenbakia <1 || 6<zenbakia
  fprintf('Aukera ezegokia: 1 eta 6 artean egon behar da\n')
  zenbakia=input('Choose an option:' );
 end
 if zenbakia==1
  ATAZA_bat
  end
  if zenbakia==2
   ATAZA_bi
  end
if zenbakia==3
  ataza4
  end
if zenbakia==4
  ataza5
  end
if zenbakia==5
  ataza6
  end
end  
  
 