[distanciaa1dr1,velocidada1dr1,mediavelocidada1dr1,desviaciona1dr1,rangoa1dr1min,rangoa1dr1max]=leervalores('a1-driver1-log.csv','Estadísticas del conductor1 en la ruta a1:');
figure
subplot (2,1,1)
plot(distanciaa1dr1,velocidada1dr1)
title('Ruta a1')
xlabel('Distancia')
ylabel('Velocidad')
hold on
[distanciaa1dr2,velocidada1dr2,mediavelocidada1dr2,desviaciona1dr2,rangoa1dr2min,rangoa1dr2max]=leervalores('a1-driver2-log.csv','Estadísticas del conductor2 en la ruta a1:');
plot(distanciaa1dr2,velocidada1dr2)

[distancian1dr1,velocidadn1dr1,mediavelocidadn1dr1,desviacionn1dr1,rangon1dr1min,rangon1dr1max]=leervalores('n1-driver1-log.csv','Estadísticas del conductor1 en la ruta n1:');
subplot (2,1,2)
plot(distancian1dr1, velocidadn1dr1)
title('Ruta n1')
xlabel('Distancia')
ylabel('Velocidad')
hold on

[distancian1dr2,velocidadn1dr2,mediavelocidadn1dr2,desviacionn1dr2,rangon1dr2min,rangon1dr2max]=leervalores('n1-driver2-log.csv','Estadísticas del conductor2 en la ruta n1:');
plot(distancian1dr2,velocidadn1dr2)
saveas(gcf,'Tarea2.png','jpg')

