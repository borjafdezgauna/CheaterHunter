clc
%garbitu
x=input('      ######## MENU########\n 1. Show route plots/statistics\n 2. Show driver plots/statistics\n 3. Time calculations for each driver/route\n 4. Check speed limits\n 5. Fuel consumption calculations for each driver/route\n 6. Exit\n Choose an option:', 's');
%Menuaren egitura bistaratzen du eta 1tik 6rako tekla bat klikatu nahien arabera   
    X=str2num(x); %x stream formatuan daukagunez, zenbakiratu behar da
    if X==1 %1 balioa ematean gertatuko dena
        clc %command window-a garbitzeko
        Ejercicio1 %1. ataza exekutatu
        M=input('\nSakatu edozein tekla jarraitzeko.\n', 's'); %Behin X emanda, edozein teklarekin menura bueltatzeko
        clc %command window-a garbitzeko
        close all %Aurretik exekutatutako ataza itxi
        Ejercicio3_Menu  %menura itzuli
    elseif X==2 %2 balioa ematean gertatuko dena
        clc %command window-a garbitzeko
        Ejercicio2 %2. ataza exekutatu
        M=input('\nSakatu edozein tekla jarraitzeko.\n', 's');  %Behin X emanda, edozein teklarekin menura bueltatzeko
        clc %command window-a garbitzeko
        close all %Aurretik exekutatutako ataza itxi
        Ejercicio3_Menu %menura itzuli
    elseif X==3 %3 balioa ematean gertatuko dena
        clc %command window-a garbitzeko
        Ejercicio4 %4. ataza exekutatu
        M=input('\nSakatu edozein tekla jarraitzeko.\n', 's');  %Behin X emanda, edozein teklarekin menura bueltatzeko
        clc %command window-a garbitzeko
        close all %Aurretik exekutatutako ataza itxi
        Ejercicio3_Menu  %menura itzuli  
    elseif X==4 %4 balioa ematean gertatuko dena
        clc %command window-a garbitzeko
        Ejercicio5 %5. ataza exekutatu
        M=input('\nSakatu edozein tekla jarraitzeko.\n', 's');  %Behin X emanda, edozein teklarekin menura bueltatzeko
        clc %command window-a garbitzeko
        close all %Aurretik exekutatutako ataza itxi
        Ejercicio3_Menu     %menura itzuli
    elseif X==5 %5 balioa ematean gertatuko dena
        clc %command window-a garbitzeko
        Ejercicio6 %6. ataza exekutatu
        M=input('\nSakatu edozein tekla jarraitzeko.\n', 's'); %Behin X emanda, edozein teklarekin menura bueltatzeko
        clc %command window-a garbitzeko
        close all %Aurretik exekutatutako ataza itxi
        Ejercicio3_Menu %menura itzuli
        
    elseif X==6 %6 balioa ematean gertatuko dena
        clc %command window-a garbitzeko
        disp('Goodbye!') %hori bistaratu
        pause(1.5) %denbora pausa egiteko(segundutan) Goodbye dagoen bitartean
        clc %command window-a garbitzeko
  
    else clc %command window-a garbitzeko
        M=input('Aukera desegokia: 1 eta 6 artean egon behar da.\n Sakatu edozein tekla menura bueltatzeko.', 's'); 
        %Xri balioa 1 eta 6 artean ez badiozu ematen, hori bistaratzeko
        Ejercicio3_Menu %menura itzuli
    end