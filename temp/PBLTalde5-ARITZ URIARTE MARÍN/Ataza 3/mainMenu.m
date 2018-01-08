%%Proiektuan kalkulatutako hainbat datu bitaratzen dituen scrit-a sortu
i=1
fprintf ('####### MENU #######:\n1. Show route plots/statistics\n2. driver plots/statistics\n3. Time calculations for each driver/route\n4. Check speed limits\n5. Fuel consumption calculations for each driver/route\n6. Exit\n ')
Aukera = input ('Choose an option:')

 switch Aukera
     case {1}
         Ataza11
     case {2}
         Ataza21
     case {3} 
         Ataza46
     case {4}
        
     case {5}
         
     case {6}
     otherwise 
         disp ('Aukera ezegokia: 1 eta 6 artean egon behar da')
   
 end