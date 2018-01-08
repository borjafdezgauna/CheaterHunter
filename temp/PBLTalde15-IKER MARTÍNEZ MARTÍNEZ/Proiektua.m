clc   %%Proiektua abiaratzerakoan komando leihoa hustutzeko
MenuOption=0;   %%MenuOption aldagaia sortuko dugu 0 balioaz

%%MenuOption ezberdin 6 den bitartean atazak exekutatu ahal izateko bukle bat sortu dugu
while MenuOption~=6   
  clc   %% Ataza batetik bestera pasatzerakoan aurrekoa ezabatzeko
  %%menua bistaratuko dugu 
  fprintf('#######  MENU  ########:\n 1. Show route plots/statistics\n 2. Show driver plots/statistics\n 3. Time calculations for each driver/route\n 4. Check speed limits\n 5. Fuel consumption calculations for each driver/route\n 6. Exit\n')
  MenuOption= input('Sartu nahi den ariketa: ');    %%Erabiltzaileari zer egin nahi duen galdetuko diogu zenbaki bat sartuaz
  MenuOption=MenuZenbakia(MenuOption);    %%erabiltzaileak sartutako zenbakia egokia den ala ez aztertuko dugu funtzio baten bidez
  
  %%Menu zenbakiaren arabera dagokion ataza abiaratuko dugu eta zer edo zer idaztea eskatuko diogu aurrera jarraitu baino lehen, horrela eginikoa ikusteko denbora eduki dezan
  if MenuOption==1
    Ataza1
    input('Sakatu edozein tekla jarraitzeko ','s');
    close all   %%ordura arteko grafikoak ixteko erabili dugu
  end
    if MenuOption==2
    Ataza2
    input('Sakatu edozein tekla jarraitzeko ','s');
    close all
  end
    if MenuOption==3
    Ataza4
    input('Sakatu edozein tekla jarraitzeko ','s');
    close all    
  end
    if MenuOption==4
    Ataza5
    input('Sakatu edozein tekla jarraitzeko ','s');
    close all
  end
    if MenuOption==5
    Ataza6
    input('Sakatu edozein tekla jarraitzeko ','s');
    close all
  end
     if MenuOption==6   %%Irten nahi duela esaten duenean konfirmazioa eskatuko diogu
       ErantzunZuzena=0;    %%Aldagai bat sortu dugu erabiltzaileak sakaturiko aukera "egokia-posiblea" dela bermatzeko
       while ErantzunZuzena==0    %%while bat erabili dugu horretarako
         clc
         Erantzuna=input('Benetan atera nahi duzu? (1=Bai/0=Ez) ','s');   %%ziurtatzeko galdera botatzen diogu
         
         if Erantzuna=='1'    %%baietz erantzuten badu guk definituriko aldagaiari balioa aldatu eta programa amaituko da
           MenuOption=6;    %%while-tik ateratzeko MenuOption aldagaiari 6 balioa ematen diogu
           ErantzunZuzena=1;    %%konprobaziotik ateratzeko
         end
         
         if Erantzuna=='0'    %%ezetz erantzuten badu guk definituriko aldagaiari balioa aldatu eta berriz ere menua agertuko zaio
           MenuOption=0;    %%menua berriz agertzeko MenuOption aldagaiari 6-rekiko ezberdina den edozein balio esleitzen diogu, 0 adibidez
           ErantzunZuzena=1;    %%konprobaziotik ateratzeko
         end

       end
      end
end
clc