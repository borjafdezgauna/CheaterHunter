function [ interpolatedY ] = interpolateLinearly( xVector, yVector , x)
  %Funtzio honekin, x-ren balio baten y balioa interpolatuko dugu.
  %Hasteko. i-ri 2 balioa emango diogu, bektoreko lehen datua kontuan ez hartzeko.
   i=2;
   
   %While begizta batekin, i balioa handitzen joango gara, bilatzen ari garen x baliora iritsi arte.
    while xVector (i)<=x
      i=i+1;
    end
    
   %Ondoren, maldaren ekuazioa erabiliko dugu, puntu horretan y-ren interpolazioa kalulatzeko.
   x1=xVector(i);
   x0=xVector(i-1);
   y1=yVector(i);
   y0=yVector(i-1);
    
   y=y0+((y1-y0)/(x1-x0))*(x-x0);
   interpolatedY=y;
end
    