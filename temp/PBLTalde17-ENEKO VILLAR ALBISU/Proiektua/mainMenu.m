clear
clc
close
%Erabiltzaileari aukerak pantailaratu.
i=menu('Aukeratu bat','1.Bidearen datuak/plot-ak','2.Gidarien datuak/plot-ak','3.Beharrezko denbora','4.Abiadura limiteak','5.Kontsumitutako erregaia','6.Atera');
while i<=5
 if i==1;
  Ataza1   
 elseif i==2;
  Ataza2  
 elseif i==3;
  Ataza4
 elseif i==4;
  Ataza5
 elseif i==5;
  Ataza6
 endif
 disp('Sakatu edozein tekla jarraitzeko');
 pause
 clc
 close
 i=menu('Aukeratu bat','1.Bidearen datuak/plot-ak','2.Gidarien datuak/plot-ak','3.Beharrezko denbora','4.Abiadura limiteak','5.Kontsumitutako erregaia','6.Atera');
endwhile
clear
clc

