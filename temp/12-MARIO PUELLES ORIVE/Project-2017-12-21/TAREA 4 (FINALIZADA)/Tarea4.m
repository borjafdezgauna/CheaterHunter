for i=1:4
    switch i
        case 1
            ruta=sprintf('a');
            conductor=sprintf('1');
        case 2
            ruta=sprintf('a');
            conductor=sprintf('2');
        case 3
            ruta=sprintf('n');
            conductor=sprintf('1');
        case 4
            ruta=sprintf('n');
            conductor=sprintf('2');
        end
        llamada=sprintf('%s1-driver%s-log.csv',ruta,conductor);
        switch i
            case 1
            [kms,speedKmH]=leervalores4(llamada);
            conductora1=estimateTime(kms,speedKmH,1000);
            case 2
            [kms,speedKmH]=leervalores4(llamada);
            conductora2=estimateTime(kms,speedKmH,1000);
            case 3
            [kms,speedKmH]=leervalores4(llamada);
            conductorn1=estimateTime(kms,speedKmH,1000);
            case 4
            [kms,speedKmH]=leervalores4(llamada);
            conductorn2=estimateTime(kms,speedKmH,1000);
        end 
        
end
fprintf('El tiempo estimado para el conductor 1 en la ruta a es de: %s\n',conductora1)
fprintf('El tiempo estimado para el conductor 2 en la ruta a es de: %s\n',conductora2)
fprintf('El tiempo estimado para el conductor 1 en la ruta n es de: %s\n',conductorn1)
fprintf('El tiempo estimado para el conductor 2 en la ruta n es de: %s\n',conductorn2)