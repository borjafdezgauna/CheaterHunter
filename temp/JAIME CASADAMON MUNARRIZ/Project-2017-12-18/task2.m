%TASK 2 Analyzing the logs for each driver on each route

%PART 2-1 Generate plots
%Read the data

 a1d1=dlmread('a1-driver1-log.csv',',');
 a1d2=dlmread('a1-driver2-log.csv',',');
 n1d1=dlmread('n1-driver1-log.csv',',');
 n1d2=dlmread('n1-driver2-log.csv',',');
    
  
  
                subplot(2,1,1);%Make the subplots with the measures that we want
                plot(a1d1(:,1),a1d1(:,2),a1d2(:,1),a1d2(:,2));
                title('ROUTE A1')%;We decide the name of the subplot
                xlabel('Distance(km)');%Name the x axis
                ylabel('Speed(km/h)');%Name the y axis
                hText=text(140,40,'Driver1->blue');%Decide the legend
                hText=text(140,20,'Driver2->red');%Decide the legend
                
                subplot(2,1,2);
                plot(n1d1(:,1),n1d1(:,2),n1d2(:,1),n1d2(:,2));
                title('ROUTE N1');
                xlabel('Distance(km)');
                ylabel('Speed(km/h)');
                hText=text(140,40,'Driver1->blue');
                hText=text(140,20,'Driver2->red');
                

   %PART 2-2 Route statistics for each driver
     
   %N1D1
        vectorn1d1=n1d1(:,2);
        meann1d1=mean(vectorn1d1);
        standardn1d1=std(vectorn1d1);
        minn1d1=min(vectorn1d1);
        maxn1d1=max(vectorn1d1);
        fprintf('\n\nDriver1 statistics in route N1:\n Mean speed: %.2f (sd: %.2f)\n Min-Max seepd:[%.2f, %.2f]',meann1d1,standardn1d1,minn1d1,maxn1d1)
   
    %N1D2
        vectorn1d2=n1d2(:,2);
        meann1d2=mean(vectorn1d2);
        standardn1d2=std(vectorn1d2);
        minn1d2=min(vectorn1d2);
        maxn1d2=max(vectorn1d2);
        fprintf('\n\nDriver2 statistics in route N1:\n Mean speed: %.2f (sd: %.2f)\n Min-Max seepd:[%.2f, %.2f]',meann1d2,standardn1d2,minn1d2,maxn1d2)
         
     %A1D1
        vectora1d1=a1d1(:,2);
        meana1d1=mean(vectora1d1);
        standarda1d1=std(vectora1d1);
        mina1d1=min(vectora1d1);
        maxa1d1=max(vectora1d1);
        fprintf('\n\nDriver1 statistics in route A1:\n Mean speed: %.2f (sd: %.2f)\n Min-Max seepd:[%.2f, %.2f]',meana1d1,standarda1d1,mina1d1,maxa1d1)
        
      %A1D2
        vectora1d2=a1d2(:,2);
        meana1d2=mean(vectora1d2);
        standarda1d2=std(vectora1d2);
        mina1d2=min(vectora1d2);
        maxa1d2=max(vectora1d2);
        fprintf('\n\nDriver2 statistics in route A1:\n Mean speed: %.2f (sd: %.2f)\n Min-Max seepd:[%.2f, %.2f]',meana1d2,standarda1d2,mina1d2,maxa1d2)