%%funtzio honek x-balioko bektore bat eta y-balioko bektore bat hartuaz
%% y-ren balio interpolatua ematen du sartutako x balioarekiko

function [abiadura] = interpolazioa(xbektorea,ybektorea,posizioa)
i=1;
    while i<length(xbektorea) && xbektorea(i)<posizioa  %%xbektoretik atera ez dadin eta posizioa baino handiago edota berdina den xbektoreko balio bat aurkitu arte jarrai dezan
    i=i+1;    %%hurrengo balioa begiratzeko
    end
    
    if i==1   %%posizioa xbektoreko lehenengo balioa baino txikiago edo berdina denean x eta y betkoreetako lehen eta bigarren zutabeko malda erabiliko du
    i=i+1;  
    end
    
    x0=xbektorea(i-1);    %%xbektoreko i.posizioaren aurreko balioa hartuko du
    x1=xbektorea(i);    %%xbektoreko i.posizioaren balioa hartuko du
    y0=ybektorea(i-1);    %%ybektoreko i.posizioaren aurreko balioa hartuko du
    y1=ybektorea(i);      %%ybektoreko i.posizioaren balioa hartuko du
    abiadura=((posizioa-x0)/(x1-x0))*(y1-y0)+y0;    %%interpolazioaren formula aplikatzen du
end

