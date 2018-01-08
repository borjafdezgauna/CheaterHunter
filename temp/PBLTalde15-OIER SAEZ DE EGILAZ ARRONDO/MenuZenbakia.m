%%funtzio bat sortu dugu MenuOption aldagaian sartutako balioa aztertzeko
%%1,2,3,4,5 edo 6 bada zenbaki bera mantenduko du eta exekutatu
%%bestela aukera desegokia dela eta x=0 jarriaz Proiektuan menua berriro hasiko litzateke

function x=MenuZenbakia(MenuOption)
if MenuOption==1 || MenuOption==2 || MenuOption==3 || MenuOption==4 || MenuOption==5 || MenuOption==6
x=MenuOption;
else
fprintf('Aukera desegokia: 1 eta 6 artean egon behar da\n\n')
x=0;
end
end