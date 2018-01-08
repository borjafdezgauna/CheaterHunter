clear
clc

conductora1=csvread('a1-driver1-log.csv');
conductora2=csvread('a1-driver2-log.csv');
conductorn1=csvread('n1-driver1-log.csv');
conductorn2=csvread('n1-driver2-log.csv');
numSlices=1000;

E1=estimatedTime=interp1(conductora1(:,1), conductora1(:,2), numSlices, 'linear');
E2=estimatedTime=interp1(conductora2(:,1), conductora2(:,2), numSlices, 'linear');
E3=estimatedTime=interp1(conductorn1(:,1), conductorn1(:,2), numSlices, 'linear');
E4=estimatedTime=interp1(conductorn2(:,1), conductorn2(:,2), numSlices, 'linear');

T1=toHMS(E1);
T2=toHMS(E2);
T3=toHMS(E3);
T4=toHMS(E4);

TE1=sprintf('%s\n%s: %d', 'Tiempo estimado para el conductor1 en la ruta a1:',T1)
TE2=sprintf('%s\n%s: %d', 'Tiempo estimado para el conductor2 en la ruta a1:',T2) 
TE3=sprintf('%s\n%s: %d', 'Tiempo estimado para el conductor1 en la ruta n1:',T3) 
TE4=sprintf('%s\n%s: %d', 'Tiempo estimado para el conductor2 en la ruta n1:',T4)