
%%Hasteko i-ri 0 balioa eman, horrela azken kasuan 1 balioa hartzean while agindutik ateratzeko
i=0;

 while i==0
   %%programa pantila garbiarekin hasteko 'clc' eta ondoren menua bistaratu 
   clc
     fprintf('####### MENU ########:\n1. Show route plots/statistics\n2. Show driver plots/statistics\n3. Time calculations for each driver/route\n4. Check speed limits\n5. Fuel consumption calculations for each driver/route\n6. Exit\n');



n=input('Choose an option:'); %%n ren balioari aukerak egokitu, aukera bakoitzean ariketa bat exekutatu
switch n
    case 1
        ariketa1
    case 2
        ariketa2
    case 3
        ariketa46
        
     case 4
        ariketa5
        
        case 5 
          disp(' 6. ariketa ez dago bukatuta');
          input('sakatu enter jarraitzeko');
    case 6
        
     disp('programa amaitu da');
     i=1;   
    
    otherwise                   %%Sartutako balioa ez badator bat aukerekin programa berriz exekutatuko da
        disp('Aukera ezegokia: 1 eta 6 artean egon behar da');
        input('sakatu enter jarraitzeko');
end

 end
