a1_1=dlmread('a1-driver1-log.csv',',');
a1_2=dlmread('a1-driver2-log.csv',',');
n1_1=dlmread('n1-driver1-log.csv',',');
n1_2=dlmread('n1-driver2-log.csv',',');

%al principio pensaba en quitar la primera linea porque el km y velocidad =O
%pero si la quitaba, no estaba contando los 999 slices que hay con velocidad entre el punto 0 y el siguiente
%controlo que no empiece en el km 0 y velocidad 0 en la funcion estimateTime
%a1_1(1,:)=[];
%a1_2(1,:)=[];
%n1_1(1,:)=[];
%n1_2(1,:)=[];

kms_a1_1=a1_1(:,1);
velocidad_a1_1=a1_1(:,2);

kms_a1_2=a1_2(:,1);
velocidad_a1_2=a1_2(:,2);

kms_n1_1=n1_1(:,1);
velocidad_n1_1=n1_1(:,2);

kms_n1_2=n1_2(:,1);
velocidad_n1_2=n1_2(:,2);


estimado_a1_1=toHMS(estimateTime(kms_a1_1,velocidad_a1_1,1000));
estimado_a1_2=toHMS(estimateTime(kms_a1_2,velocidad_a1_2,1000));

estimado_n1_1=toHMS(estimateTime(kms_n1_1,velocidad_n1_1,1000));
estimado_n1_2=toHMS(estimateTime(kms_n1_2,velocidad_n1_2,1000));

clc

fprintf('Estimated time for driver1 in route n1: %s\n',estimado_n1_1);
fprintf('Estimated time for driver1 in route n1: %s\n',estimado_n1_2);

fprintf('Estimated time for driver1 in route n1: %s\n',estimado_a1_1);
fprintf('Estimated time for driver1 in route n1: %s\n',estimado_a1_2);