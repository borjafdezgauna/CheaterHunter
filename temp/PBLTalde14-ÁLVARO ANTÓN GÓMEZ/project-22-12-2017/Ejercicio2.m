k = 1; %subplota (behin zikloa beteta) berriro exekutatzeko balio du (bigarren balioarekin)
  for route={'a1','n1'} %a1 eta n1 testuak banan banan hartu ditzan
  subplot(1,2,k);  %grafikoak lehenengo bata eta gero bestea ager daitezen, 1x2 matrize bat itxuratuz (k=1 izanik) 
  hold on %grafikoak lehenengo for-ean egindakoa mantentzeko
  
  for driver=1:2 %1 eta 2 driver-ak banan banan hartu ditzan
  
  file=sprintf('%s-driver%d-log.csv',route{1}, driver);%artxiboen izenak gordetzeko (route stream-a denez, {1} jarri behar)
  %fprintf-rekin balioak ez lirateke gordetuko, bistaratuko litzateke
  %command window-ean
  
   a=dlmread(file,','); %Lehen sortu ditugun artxiboen izenak irakurri eta 'a' aldagaian kargatu
   v=a(:,2);
   d=a(:,1);
    %Banan banan zutabe bakoitzari dagokion izena esleitzea
   plot(d,v); %d(x) eta v(y) grafikatzeko
    if k==1 %tituluak bakoitza bere grafikoan kokatzeko
    title('GIDARIEN ABIADURA AUTOPISTAN'); %grafikoari titulua jartzeko
    elseif k>1 %k=2 bada gertatuko dena
     title('GIDARIEN ABIADURA NAZIONALEAN'); 
    end   
        
   xlabel('Distantzia(km)');%x eta y ardatzei izena emateko
   ylabel('Abiadura(km/h)');%x eta y ardatzei izena emateko
   
  medV=sum(a(:,2))/length(a(:,2));%v-ren bataz bestekoa ateratzeko (mean funtzioa erabili dezakegu ere)
  minV=min(a(:,2));%v-ren minimoa ateratzeko
  maxV=max(a(:,2));%v-ren maximoa ateratzeko
  desbiderazioa=std(a(:,2));%v-ren desbiderazioa ateratzeko
  
  fprintf('\nDriver%d''s statistics for route %s \n Mean speed:%.2f km/h (sd. %.2f) \n Min-max speed:[%.2f,%.2f]\n ',driver,route{1},medV,desbiderazioa,minV,maxV);
  %Eskatzen digun formatoa BISTARATZEKO, balioak lehendik kalkulatutako balio oro izango dira, eta ordena egokian sartu behar dira.
  end
  k = k +1; %berriro exekutatuko da, baino oraingoan subplot(1,2,2) exekutatuz (2.azpigrafikoa)
  end 
    


   
   
   
   
   
   
   
   
   
   
 