
for autobidea= {'a1' , 'n1'}
   fitxategia = sprintf('%s-height.csv', autobidea{1});
    data = dlmread (fitxategia, ',',1,0);
    BB=mean(data(:,3));
Desbiazioa=std(data(:,3));
fprintf('%s route statistics:\n''BB Altuera: % .2f (sd:% .2f)\n',autobidea{1},BB,Desbiazioa)
AltueraMinimoa=min(data(:,3));
AltueraMaximoa=max(data(:,3));
fprintf('Altueraren heina: [% .2f ,% .2f]\n',AltueraMinimoa,AltueraMaximoa)

end
