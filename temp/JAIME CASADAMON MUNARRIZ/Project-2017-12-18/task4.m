%TASK4 Estimate the time it took to do each of the routes to each of the drivers


%Driver 1 route N1
    d1n1=dlmread('n1-driver1-log.csv',',',1,0);%Name and read the data
    kmd1n1=d1n1(:,1);%Choose the columns of the kilometers
    speedd1n1=d1n1(:,2);%Choose the columns of the speeds
    secd1n1=estimateTime(kmd1n1,speedd1n1,1000);%Use the previous function 'estimateTime'
    
    timed1n1=toHMS(secd1n1);%Use 'toHMS' to convert the second to hours, minutes and seconds
    
    
    
    %Repeat the same for both drivers in both routes
    %Driver 2 route N1
    d2n1=dlmread('n1-driver2-log.csv',',',1,0);
    kmd2n1=d2n1(:,1);
    speedd2n1=d2n1(:,2);
    secd2n1=estimateTime(kmd2n1,speedd2n1,1000);
    
    timed2n1=toHMS(secd2n1);
    
    
    
    
    %Driver 1 route A1
    d1a1=dlmread('a1-driver1-log.csv',',',1,0);
    kmd1a1=d1a1(:,1);
    speedd1a1=d1a1(:,2);
    secd1a1=estimateTime(kmd1a1,speedd1a1,1000);
    
    timed1a1=toHMS(secd1a1);
   
    
    
    
    %Driver 2 route A1
    d2a1=dlmread('a1-driver2-log.csv',',',1,0);
    kmd2a1=d2a1(:,1);
    speedd2a1=d2a1(:,2);
    secd2a1=estimateTime(kmd2a1,speedd2a1,1000);
    
    timed2a1=toHMS(secd2a1);
   
    
    %Outputs
    %Results of the functions
    fprintf('\n\nEstimated time for driver1 in route N1: %s',timed1n1)
    fprintf('\n\nEstimated time for driver2 in route N1: %s',timed2n1)
    fprintf('\n\nEstimated time for driver1 in route A1: %s',timed1a1)
    fprintf('\n\nEstimated time for driver2 in route A1: %s',timed2a1)
    
