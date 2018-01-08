alturaA1=load('a1-height.csv')
distanciaA1=load('a1-height.csv')
longitudA1=load('a1-height.csv')
latitudA1=load('a1-height.csv')
alturaN1=load('n1-height.csv')
distanciaN1=load('n1-height.csv')
longitudN1=load('n1-height.csv')
latitudN1=load('n1-height.csv')
subplot(2,2,1);
plot(distanciaA1,alturaA1);
subplot(2,2,2);
plot(longitudA1, latitudA1);
subplot(2,2,3);
plot(distanciaN1,alturaN1);
subplot(2,2,4);
plot(longitudN1,latitudN1)