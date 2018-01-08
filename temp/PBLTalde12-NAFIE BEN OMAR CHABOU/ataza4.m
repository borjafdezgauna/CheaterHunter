%ataza honetan gidari bakoitzak zenbat denbora behar duen trajektua egiteko estimatuko
%dugu hainbat funtzio lehenik sortuak erabiliz

%nazionaletik lehenego gidaria

n11 = dlmread('n1-driver1-log.csv',',');
 kms = n11(:,1);
 speedKmH = n11(:,2);
 numSlices=10000;
 
 m=estimateTime(kms,speedKmH,numSlices);
 toHMS1(m);
 
 %nazionaletik bigarren gidaria
 
 n12 = dlmread('n1-driver2-log.csv',',');
 kms = n12(:,1);
 speedKmH = n12(:,2);
 numSlices=10000;
 
 m=estimateTime(kms,speedKmH,numSlices);
 toHMS2(m);
 
 %autopistatik lehenengo gidaria
 
 a11 = dlmread('a1-driver1-log.csv',',');
 kms = a11(:,1);
 speedKmH = a11(:,2);
 numSlices=10000;
 
 m=estimateTime(kms,speedKmH,numSlices);
 toHMS3(m);
 
 %autopistatik bigarren gidaria
 
 a12 = dlmread('a1-driver2-log.csv',',');
 kms = a12(:,1);
 speedKmH = a12(:,2);
 numSlices=10000;
 
 m=estimateTime(kms,speedKmH,numSlices);
 toHMS4(m);
 