%ataza3 menu bat sortuko dugu. Beste ataza gustiei deitzeko modu eroso batean.


function zenb = mainMenu()
  
  clear
  clc
  fprintf('####### MENU ########:\n1. Show route plots/statistics\n2. Show driver plots/statistics\n3. Time calculations for each driver/route\n4. Check speed limits\n5. Fuel consumption calculations for each driver/route\n6. exit\n')
  zenb = input('Eman zenbaki bat: ');
  %zenbakia ez bada egokia
  if zenb > 6
    clear
    clc
    fprintf('Eman zenbaki bat 1 eta 6 bitartean:\n\n\n')
    input('sakatu <enter> menura joateko');
    mainMenu
    
  %ataza1
  elseif zenb == 1
    clear
    clc
    ataza1
    input('sakatu <enter> menura joateko');
    mainMenu
   
   
  %ataza2    
    
  elseif zenb == 2
    clear
    clc
    ataza2
    input('sakatu <enter> menura joateko');
    mainMenu
    
  %ataza4
  elseif zenb == 3
    clear
    clc
    ataza4
    input('sakatu <enter> menura joateko');
    mainMenu
  %ataza5 egin gabe dugu
  elseif zenb == 4
    clear
    clc
    input('not found: sakatu <enter> menura joateko');
    mainMenu
  %ataza6 egin gabe dugu
  elseif zenb == 5
    clear
    clc
    input('not found: sakatu <enter> menura joateko');
    mainMenu
   %irteteko menutik 
  elseif zenb == 6
    clear
    clc
    
 end
    
    
    
  
    
    
    
    
  