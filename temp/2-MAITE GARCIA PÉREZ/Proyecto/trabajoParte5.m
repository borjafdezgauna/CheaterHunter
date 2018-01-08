for ruta = {'a1','n1'}
        ficheros=sprintf('%s-speed-limit.csv',ruta{1});
        tabla=dlmread(ficheros);
end

interpolateToTheLeft([0 10 40],[90 120 90],3)


