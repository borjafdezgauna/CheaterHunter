a=dlmread('a1-height.csv',',',1,0);
alturaMedia1=mean(a(:,3));
desviacioEstandar=std(a(:,3));
minimo=min(a(:,3));
maximo=max(a(:,3));
fprintf('Altura media:%.2f(sd:%.2f)\nRango de las alturas[%.2f,%.2f]\n',alturaMedia1,desviacioEstandar,minimo,maximo)
b=dlmread('n1-height.csv',',',1,0);
alturaMedia2=mean(b(:,3));
desviacioEstandar2=std(b(:,3));
minimo2=min(b(:,3));
maximo2=max(b(:,3));
fprintf('Altura media:%.2f(sd:%.2f)\nRango de las alturas[%.2f,%.2f]\n',alturaMedia2,desviacioEstandar2,minimo2,maximo2)