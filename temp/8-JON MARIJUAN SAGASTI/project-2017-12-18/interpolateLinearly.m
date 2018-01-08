while xVector(i)<x   %seleccionamos las franjas en las que interpolar las velocidades
      i=1   
      function[interpolatedY]=interpolateLinearly(xVector,yVector,x)
      interpolatedY=((yVector(i+1)-yVector(i))*(xVector(i+1)-xVector(i))/(xVector(i+1)-xVector(i)))+(yVector(i))
      end                  %escribimos la funcion con la que interpolaremos los datos
end