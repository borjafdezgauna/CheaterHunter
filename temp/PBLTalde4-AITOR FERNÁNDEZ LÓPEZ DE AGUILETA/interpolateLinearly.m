function [interpolatedY] = interpolateLinearly (xVector, yVector, x)  
  %%hasierako baldintzak ezarri%
  i=1;
   x0=0;
   y0=0;
   while i<length(xVector) && xVector(i)<x
     i=i+1;
    end
    %%lehenengo puntua ez baldin bada aurreko puntuko balioak hasierako balio bezala hartu%%
    if i>1
       x0= xVector(i-1);
       y0= yVector(i-1);
    end
       x1= xVector(i);
       y1= yVector(i);
    %%y ardatzean dagoen aldaketa zati x ardatzean dagoen aldaketa malda da%%
    malda= (y1-y0)/(x1-x0);
    %%interpolatutako balioa izango da malda bider x ardatzean ibilitakoa + y ardatzean ezarritako hasierako baldintza%%
    interpolatedY= (x-x0)*malda + y0;
     end