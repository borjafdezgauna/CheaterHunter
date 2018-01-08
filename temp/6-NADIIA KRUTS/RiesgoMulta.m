% Leemos los datos de los ficheros de conductores
% Leemos los datos de los ficheros de velocidad maxima
% Los pasamos como parametros a la funcion realizada checkSpeedLimits

a1_1= dlmread('a1-driver1-log.csv',',');
a1_2= dlmread('a1-driver2-log.csv',',');
n1_1= dlmread('n1-driver1-log.csv',',');
n1_2= dlmread('n1-driver2-log.csv',',');
v_a1=dlmread('a1-speed-limit.csv',';');
v_n1=dlmread('n1-speed-limit.csv',';');

a1_1(1,:)=[];
a1_2(1,:)=[];
n1_1(1,:)=[];
n1_2(1,:)=[];

kms_a1_1=a1_1(:,1);
velocidad_a1_1=a1_1(:,2);

kms_a1_2=a1_2(:,1);
velocidad_a1_2=a1_2(:,2);

kms_n1_1=n1_1(:,1);
velocidad_n1_1=n1_1(:,2);

kms_n1_2=n1_2(:,1);
velocidad_n1_2=n1_2(:,2);

kilometros_a1=v_a1(:,1);
velocidad_a1=v_a1(:,2);

kilometros_n1=v_n1(:,1);
velocidad_n1=v_n1(:,2);


[KilometrosExc, Tanto]=checkSpeedLimits(kms_n1_1,velocidad_n1_1,kilometros_n1,velocidad_n1,1000);
pintarInfraccion('driber1','n1',KilometrosExc, Tanto);

[KilometrosExc, Tanto]=checkSpeedLimits(kms_n1_2,velocidad_n1_2,kilometros_n1,velocidad_n1,1000);
pintarInfraccion('driber2','n1',KilometrosExc, Tanto);

[KilometrosExc, Tanto]=checkSpeedLimits(kms_a1_1,velocidad_a1_1,kilometros_a1,velocidad_a1,1000);
pintarInfraccion('driber1','a1',KilometrosExc, Tanto);

[KilometrosExc, Tanto]=checkSpeedLimits(kms_a1_2,velocidad_a1_2,kilometros_a1,velocidad_a1,1000);
pintarInfraccion('driber2','a1',KilometrosExc, Tanto);






