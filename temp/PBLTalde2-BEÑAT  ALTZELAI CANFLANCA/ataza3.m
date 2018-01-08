%Hasi aurretik, kontsola garbitu.
clc

%Menua bistaratuko dugu, erabiltzaileak aukera ezberdinak ikus ditzan, eta aukera bat aukeratzeko esango diogu.
disp('####### MENUA #######')
disp('1-Bideen estatistikak eta grafikoak bistaratu')
disp('2-Gidarien estatistikak eta grafikoak bistaratu')
disp('3-Denboraren kalkuluak gidari bakoitzarentzat')
disp('4-Abiadura mugak ikusi')
disp('5-Erregai gastua bide/gidari bakoitzeko')
disp('6-Irten')
MenuAukera=input('Aukeratu zenbaki bat:');
  
  %Sartzen duen balioa ez badago aukeren artean, beste balio bat emateko eskatuko diogu.
  while MenuAukera<1 || MenuAukera>6
    fprintf('Aukera desegokia: 1 eta 6 arteko balio bat eman\n')
    MenuAukera=input('Aukeratu zenbaki bat:');
  end
  
  %Switch begizta erabiliko dugu, aukera bakoitzaren arabera esleitutako eragiketa egiteko.
  switch MenuAukera
    case 1
      ataza1
    case 2
      ataza2
    case 3
      ataza4
    case 4
    disp('Sentitzen dugu, aukera hau ez dago eskuragarri.')
    input('Sakatu enter menura itzultzeko');
    clc
    ataza3
    case 5
    disp('Sentitzen dugu, aukera hau ez dago eskuragarri.')
    input('Sakatu enter menura itzultzeko');
    clc
    ataza3
    case 6
      exit
    end
    
  %Ataza bakoitza bukatzean, menura itzultzeko eskaintza egingo diogu erabitzaileari, eta berriro menua kargatuko dugu.
  input('Sakatu Enter menura itzultzeko');
  ataza3