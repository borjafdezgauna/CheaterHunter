function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
    %Tomamos los datos y los cambiamos de unidad
    xVector=toMeters(kms);
    yVector=toMetersPerSecond(speedKmH);
    longkms=length(kms);
    %Calculamos la distancia entre cada punto de control
    distanciaControl=(xVector(longkms)-xVector(1))/numSlices;
    x=distanciaControl;
    %Generamos una matriz de ceros tan larga como puntos de control hay
    estimatedTime=0;
    matriz=zeros(1,numSlices);
    %Recorremos la matriz sustitullendo los ceros por el tiempo de cada
    %tramo
    for i=1:length(matriz)
        matriz(:,i)=interpolateLinearly( xVector, yVector , x);
        x=x+distanciaControl;
    end
    %recorremos la matriz sumando los tiempos de los tramos
    for i=1:length(matriz)
        estimatedTime=estimatedTime+(distanciaControl/matriz(i));
    end
end