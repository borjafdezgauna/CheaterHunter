disp('1. Show route plots/statistics')
disp('2. Show driver plots/statistics')
disp('3. Time calculations for each driver/route')
disp('4. Check speed limits')
disp('5. Fuel consumption calculations for each driver/route')
disp('6. Exit')
i=input('choose an option:   ');
while i<1 || i>6
  disp('sartu 1 eta 6 arteko zenbaki bat')
  disp('1. Show route plots/statistics')
  disp('2. Show driver plots/statistics')
  disp('3. Time calculations for each driver/route')
  disp('4. Check speed limits')
  disp('5. Fuel consumption calculations for each driver/route')
  disp('6. Exit')
  i=input('choose an option:  ');
end 
 while i>=1 || i>=6
    if i==1
    %rutaren plotak
    B=dlmread('a1-height.csv',',',1,0);
    A=dlmread('n1-height.csv',',',1,0);
    subplot(2,2,1);
    xn1=A(:,4);
    yn1=A(:,3);
    plot(xn1,yn1);
    xlabel('Km');
    ylabel('m');
    title('Subplot 1: N1 gidaria') ;
    subplot(2,2,2)
    xn2=B(:,4);
    yn2=B(:,3);
    plot(xn2,yn2);
    xlabel('Km');
    ylabel('m');
    title('Subplot 2: A1 gidaria');
    subplot(2,2,3);
    xn3=A(:,2);
    yn3=A(:,1);
    plot(xn3,yn3);
    xlabel('longitude');
    ylabel('latitude');
    title('Subplot 3: N1 gidaria') ;
    subplot(2,2,4)
    xn4=B(:,2);
    yn4=B(:,1);
    plot(xn4,yn4);
    xlabel('longitude');
    ylabel('latitude');
    title('Subplot 4: A1 gidaria');
    saveas(gcf,'route-elevations.png');
    %rutaren estatistikak
    B1=dlmread('a1-height.csv',',',1,0);
    A1=dlmread('n1-height.csv',',',1,0);
    H=mean(A1(:,3));
    sd=std(A1(:,3));
    Hrange=[min(A1(:,3)),max(A1(:,3))];
    disp('N1 gidaria');
    disp('altuera');
    disp(H);
    disp('desbiderazioa');
    disp(sd);
    disp('altuera rangoa');
    disp(Hrange);
    H1=mean(B1(:,4));
    sd1=std(B1(:,4));
    Hrange1=[min(B1(:,4)),max(B1(:,4))];
    disp('A1 gidaria');
    disp('altuera');
    disp(H1);
    disp('desbiderazioa');
    disp(sd1);
    disp('altuera rangoa');
    disp(Hrange1); 
 end   
     if i==2
      %gidariaren plotak
      B=dlmread('a1-driver1-log.csv',',',1,0);
      A=dlmread('a1-driver2-log.csv',',',1,0);
      C=dlmread('n1-driver1-log.csv',',',1,0);
      D=dlmread('n1-driver2-log.csv',',',1,0);
      subplot(2,2,1);
      xn1=B(:,1);
      yn1=B(:,2);
      plot(xn1,yn1);
      xlabel('Km')
      ylabel('Kmh')
      title('Subplot 1: A1 1 gidaria') 
      subplot(2,2,2)
      xn2=A(:,1);
      yn2=A(:,2);
      plot(xn2,yn2);
      xlabel('Km')
      ylabel('KmH')
      title('Subplot 2: A1 2.gidaria')
      subplot(2,2,3);
      xn3=C(:,1);
      yn3=C(:,2);
      plot(xn3,yn3);
      xlabel('km')
      ylabel('kmh')
      title('Subplot 3: N1 1.gidaria') 
      subplot(2,2,4)
      xn4=D(:,1);
      yn4=D(:,2);
      plot(xn4,yn4);
      xlabel('KM')
      ylabel('kmh')
      title('Subplot 4: N1 2gidaria')
      saveas(gcf,'route-speed.png')
      %gidariaren estadistikak
      B=dlmread('a1-driver1-log.csv',',',1,0);
      A=dlmread('a1-driver2-log.csv',',',1,0);
      S=mean(B(:,2));
      sd=std(B(:,2));
      Srange=[min(B(:,2)),max(B(:,2))];
      disp('A1 1. gidariaren batazbesteko abiadura, desbiderazioa eta minimo eta maximoa');
      disp('bataz besteko abiadura');
      disp(S);
      disp('desbiderazioa');
      disp(sd);
      disp('abiadura rangoa');
      disp(Srange);
      S2=mean(A(:,2));
      sd2=std(A(:,2));
      Srange2=[min(A(:,2)),max(A(:,2))];
      disp('A1 2. gidariaren batazbesteko abiadura, desbiderazioa eta minimo eta maximoa');
      disp('bataz besteko abiadura');
      disp(S2);
      disp('desbiderazioa');
      disp(sd2);
      disp('abiadura rangoa');
      disp(Srange2);
      C=dlmread('n1-driver1-log.csv',',',1,0);
      D=dlmread('n1-driver2-log.csv',',',1,0);
      S2=mean(C(:,2));
      sd2=std(C(:,2));
      Srange2=[min(C(:,2)),max(C(:,2))];
      disp('N1 1. gidariaren batazbesteko abiadura, desbiderazioa eta minimo eta maximoa');
      disp('bataz besteko abiadura');
      disp(S2)
      disp('desbiderazioa');
      disp(sd2)
      disp('abiadura rangoa');
      disp(Srange2)
      S3=mean(D(:,2));
      sd3=std(D(:,2));
      Srange3=[min(D(:,2)),max(D(:,2))];
      disp('N1 2. gidariaren batazbesteko abiadura, desbiderazioa eta minimo eta maximoa');
      disp('bataz besteko abiadura');
      disp(S3)
      disp('desbiderazioa');
      disp(sd3)
      disp('abiadura rangoa');
      disp(Srange3)
      end
    if i==3
      B=dlmread('a1-driver1-log.csv',',',1,0);
      A=dlmread('a1-driver2-log.csv',',',1,0);
      C=dlmread('n1-driver1-log.csv',',',1,0);
      D=dlmread('n1-driver2-log.csv',',',1,0);
      kmsA11=B(:,1);
      kmsA12=A(:,1);
      kmsN11=C(:,1);
      kmsN12=D(:,1);
      speedA11=B(:,2);
      speedA12=A(:,2);
      speedN11=C(:,2);
      speedN12=D(:,2);
      %A1 1.gidaria
      estimatedTimeA11=estimateTime(kmsA11,speedA11,10000);
      A11=toHMS(estimatedTimeA11);
      fprintf('Estimated time for driver1 in route A1:  %s',A11);
      %A1 2.gidaria
      estimatedTimeA12=estimateTime(kmsA12,speedA12,10000);
      A12=toHMS(estimatedTimeA12);
      fprintf('Estimated time for driver2 in route A1:  %s',A12);
      %N1 1.gidaria
      estimatedTimeN11=estimateTime(kmsN11,speedN11,10000);
      N11=toHMS(estimatedTimeN11);
      fprintf('Estimated time for driver1 in route N1:  %s',N11);
      %N1 2.gidaria
      estimatedTimeN12=estimateTime(kmsN12,speedN12,10000);
      N12=toHMS(estimatedTimeN12);
      fprintf('Estimated time for driver2 in route N1:  %s',N12);
     end
      if i==4
        %5. atazako funtzioa behar da eta ez daukagu eginda%
        disp('abiaduralimitea')
        end
        if i==5
          %6. ataazako ariketa behar dugu eta ez dago eginda%
         disp('kontsumoa')
        end
      if i==6
          clc()
         break
       end
disp('sakatu edozein tekla')
pause()
clc()
disp('1. Show route plots/statistics')
disp('2. Show driver plots/statistics')
disp('3. Time calculations for each driver/route')
disp('4. Check speed limits')
disp('5. Fuel consumption calculations for each driver/route')
disp('6. Exit')
i=input('choose an option:   ');
while i<1 || i>6
  disp('sartu 1 eta 6 arteko zenbaki bat')
  disp('1. Show route plots/statistics')
  disp('2. Show driver plots/statistics')
  disp('3. Time calculations for each driver/route')
  disp('4. Check speed limits')
  disp('5. Fuel consumption calculations for each driver/route')
  disp('6. Exit')
  i=input('choose an option:  ');
end
end

