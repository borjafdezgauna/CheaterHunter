%%Script honek gidariaren abiadura eta errepidearen abiadura limitea
%%konprobatzen ditu eta limitearen gainetik egon den distantzia eta
%%ehunekoa ematen ditu.

clc
tarteak=input('Sartu estimazioa egiteko nahi duzun tarte kopurua: ');
fprintf('\n')
for errepidea={'a','n'}
  verrepidea=sprintf('%s1-speed-limit.csv',errepidea{1});
  vlimiteak=dlmread(verrepidea,';');
  
  for gidaria={'driver1','driver2'}
    fitxategia=sprintf('%s1-%s-log.csv',errepidea{1},gidaria{1});
    Fitxategia=dlmread(fitxategia,',');
    [kilometroak,ehunekoa]=checkSpeedLimits(Fitxategia(:,1),Fitxategia(:,2),vlimiteak(:,1),vlimiteak(:,2),tarteak);
    if ehunekoa>=10
      arriskua='HIGH INFRACTION RISK';
    elseif ehunekoa<=0
      arriskua='No risk of infraction';
    else
      arriskua='Mid risk of infraction';
    end
    if ehunekoa==0
      fprintf('Analyzing: Driver= %s, Route=%s1\n%s\n\n',gidaria{1},errepidea{1},arriskua);
      else
    fprintf('Analyzing: Driver= %s, Route=%s1\n%s: Kms above the speed limit= %.2f (%.2f%% of the route)\n\n',gidaria{1},errepidea{1},arriskua,kilometroak, ehunekoa);
    end
  end
end