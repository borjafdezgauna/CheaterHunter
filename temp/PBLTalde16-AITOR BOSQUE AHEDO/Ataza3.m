%%Lehenik eta behin, menua biztaratuko dugu.
fprintf('\tMenu\n 1. Show route plots/statistics\n 2. Show driver plots/statistics\n 3. Time calculations for each driver/route\n 4. Check speed limits\n 5. Fuel consumption calculations for each driver/route\n 6. Exit\n\n')

%%Gero, menuaren atala aukeratzea esango diogu.
n=input('Hautatu nahi duzun atalaren zenbakia:');

while n~=6   
 %%Menuaren barruan ez dagoen atal bat aukeratzen badu aukera ezegokia dela esango diogu 
 %%eta badagoen atal bat aukeratzen badu bertako ariketa exekutatuko da.
 %%Edozein ariketa(6a izan ezik) egin ondoren edo existitzen ez den aukera bat eskatzen badu edozein 
 %%tekla sakatzeko esango diogu menura bueltatzeko.
  if 1>n || n>6;
   fprintf('Aukera ezegokia: 1 eta 6 artean egon behar da\n')
   
   
  elseif n==1;
     Ataza1
    
  elseif n==2
    Ataza2
    
  elseif n==3
    Ataza4_6
    
  elseif n==4
   
  elseif n==5

  end 

input('Sakatu edozein tekla menura bueltatzeko','s');

fprintf('\n\tMenu\n 1. Show route plots/statistics\n 2. Show driver plots/statistics\n 3. Time calculations for each driver/route\n 4. Check speed limits\n 5. Fuel consumption calculations for each driver/route\n 6. Exit\n\n')
 
n=input('Hautatu nahi duzun atalaren zenbakia:');

end
 %%6. atala aukeratzen badu, ariketa exekutatu ondoren menua itxiko da hurrengo mezua agertu 
 disp('Menuaren amaiera')