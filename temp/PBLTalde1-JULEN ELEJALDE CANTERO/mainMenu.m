%3.ATAZA: mainMenu
% Script honek erabiltzaileari menu bat erakusten dio auera ezberdinekin ,
% aukeratzen duenaren arabera eskatzen duen informazio emango zaio, dagokion grafikin, aukera egokia den bitartean.


Aukera = 0;

 while  Aukera ~= 6
     clc
    fprintf('####### MENU ########: \n 1. Show route plots/statistics \n 2. Show driver plots/statistics \n 3. Time calculations for each driver/route \n 4. Check speed limits \n 5. Fuel consumption calculations for each driver/route \n 6. Exit\n')
         Aukera= input('Aukera bat egin: ');
         
    if Aukera <=   6 && Aukera >= 1
        if Aukera == 1    
            ataza1
           elseif Aukera == 2
                  ataza2
                 elseif Aukera == 3
                        Ataza46
                      elseif  Aukera == 4
                           input(' Barkatu eragozpenak, oraindik ez dago ? ');
                          elseif Aukera == 5
                              input('Barkatu eragozpenak, oraindik ez dago ? ');  
                               elseif  Aukera == 6
                                 input('EXIT');  
        end               
    end
       fprintf('Aukera ezegokia: 1 eta 6 artean egon behar da\n');
         clc
        fprintf('####### MENU ########: \n 1. Show route plots/statistics \n 2. Show driver plots/statistics \n 3. Time calculations for each driver/route \n 4. Check speed limits \n 5. Fuel consumption calculations for each driver/route \n 6. Exit\n');
               Aukera = input('Aukera bat egin: '); 

    end



