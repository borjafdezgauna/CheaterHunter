for file = {'a1-height.csv', 'n1-height.csv'}
  errepideenInformazioa = dlmread( file{1}, ',', 1,0);
  
  subplot(1,2,1);
  hold on;
  plot(errepideenInformazioa(:,1), errepideenInformazioa(:,2))
  xlabel('latitude (º)');
  ylabel('longitudea (º)');
  title('Errepideen ibilbidea');
  legend('N1','A1');
 
  subplot(1,2,2);
  hold on;
  plot(errepideenInformazioa(:,4) ,errepideenInformazioa (:,3))
  xlabel('distantzia (Km)');
  ylabel('altuera (m)');
   title('Errepideen altuerak');
  legend('N1','A1');
end
n1informazioa=dlmread('n1-height.csv',',', 1,0); 
n1altuerabatazbestekoa= mean(n1informazioa (:,3));
a1informazioa=dlmread('a1-height.csv',',', 1,0); 
a1altuerabatazbestekoa= mean(a1informazioa (:,3));
n1altuerarendesbiderazioestandarra= std(n1informazioa (:,3));
a1altuerarendesbiderazioestandarra= std(a1informazioa (:,3)); 
fprintf ('N1 errepidearen informazioa:\n Batazbesteko altuera: %.2f \n Desbiderazio estandarra: %.2f \n A1 errepidearen informazioa:\n Batazbesteko altuera: %.2f \n Desbiderazio estandarra: %.2f',n1altuerabatazbestekoa,n1altuerarendesbiderazioestandarra,a1altuerabatazbestekoa,a1altuerarendesbiderazioestandarra)


    