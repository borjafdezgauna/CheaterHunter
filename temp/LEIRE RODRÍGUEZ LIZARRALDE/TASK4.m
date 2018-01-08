for num=1:2
    filename2=sprintf('n1-driver%d-log.csv',num);
    %we give the accurate name to the file.
    routen1=dlmread(filename2,',');
    %we load it and save it in 'routen1'.
    distancen1=routen1(:,1);
    %we separate each columns into column matrixes to difference them.
    speedn1=routen1(:,2);
    Time=estimateTime( distancen1, speedn1, 10000);
    %We estimate the time the route will take.
    Timen1=toHMS(Time);
    %We use the function previously explained.
    fprintf('Estimated time for driver%d in routen1: %s\n',num,Timen1)
    %We give form to the return so as to receive what we have scored in a 
    %ordenated way.
end
%The process is the same for 'routen1' so we copy the FOR chaging the N for the A.
 for num=1:2
    filename1=sprintf('a1-driver%d-log.csv',num);
    routea1=dlmread(filename1,','); 
    distancea1=routea1(:,1);
    speeda1=routea1(:,2);  
    TIME=estimateTime( distancea1, speeda1, 10000);
    TIMEa1=toHMS(TIME);
    fprintf('Estimated time for driver%d in routea1: %s\n',num,TIMEa1)
end
