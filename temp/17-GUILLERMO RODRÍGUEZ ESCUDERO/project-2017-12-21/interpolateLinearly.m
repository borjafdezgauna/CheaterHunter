function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x) 
  f=1; %variable que itilizamos para la posición del vector
  while xVector(f)<=x && f<length(xVector) %condiciones: posicion del vctor>x y que sea una posicion del vector
    f=f+1; %revalozamos f
  end
    h=f-1; % valor que define la segunda posicion de cada eje. valor anterior y posterior
    xa=xVector(h);
    xb=xVector(f);
    ya=yVector(h);
    yb=yVector(f);
  interpolatedY=ya+((yb-ya)/(xb-xa))*(x-xa); %diferencia de triangulos como variable de salida
end   