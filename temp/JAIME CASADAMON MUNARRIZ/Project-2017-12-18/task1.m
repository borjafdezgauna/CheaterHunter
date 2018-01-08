

%TASK 1


  
  %PART 1-1 Make the subplots
  %Read the data
  a1=dlmread('a1-height.csv',',',1,0);
  n1=dlmread('n1-height.csv',',',1,0);
    
  
  
                subplot(1,2,1);%Make the subplots with the measures that we want
                plot(a1(:,1),a1(:,2),n1(:,1),n1(:,2));
                title('ROUTES');%We decide the name of the subplot
                xlabel('Longitudes(km)');%Name the x axis
                ylabel('Latitudes(km)');%Name the y axis
                hText=text(43.1,-2.7,'Driver1->blue');%Decide the legend
                hText=text(43.1,-2.75,'Driver2->red');%Decide the legend
                
                subplot(1,2,2);
                plot(a1(:,4),a1(:,3),n1(:,4),n1(:,3));
                title('ROUTE ELEVATIONS');
                xlabel('Distance from the origin(km)');
                ylabel('Height(m)');
                hText=text(75,100,'Driver1->blue');
                hText=text(75,50,'Driver2->red');
 
                saveas(gcf,'route-elevations','png');%Save the image of the plots in the same folder
   %PART 1-2 Route statistics
     
   %A1
        vectormeanheighta1=a1(:,3);
        meanheighta1=mean(vectormeanheighta1);
        standarda1=std(vectormeanheighta1);
        mina1=min(vectormeanheighta1);
        maxa1=max(vectormeanheighta1);
        fprintf('\n\nA1 route statistics:\n Mean height: %.2f (sd: %.2f)\n Height range:[%.2f, %.2f]',meanheighta1,standarda1,mina1,maxa1)
    %N1
        vectormeanheightn1=n1(:,3);
        meanheightn1=mean(vectormeanheightn1);
        standardn1=std(vectormeanheightn1);
        minn1=min(vectormeanheightn1);
        maxn1=max(vectormeanheightn1);
         fprintf('\n\nN1 route statistics:\n Mean height: %.2f (sd: %.2f)\n Height range:[%.2f, %.2f]',meanheightn1,standardn1,minn1,maxn1)
                