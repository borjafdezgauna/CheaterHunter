function [ kmsAboveSpeedLimit,percentAboveSpeedLimit ] = checkSpeedLimits (driverLogKm, driverLogSpeed, limitKms, limitSpeeds, numSlices)
  %% Zeros osatutako bektorea gure posizioa gordetzeko, elementu kopurura numslices-en araberakoa %%
pos=zeros(1,numSlices);
%% Posizio bektorearen elementuen arteko ezberdintasun diferentzia balioa %%
diff=driverLogKm(length(driverLogKm))/numSlices;
zatiaknonlimiteapasatu=0;
%% Zeros osatutako bektorea gidarien abiadurak gordetzeko, elementu kopurura numslices-en araberakoa %%
gidariabiadurak=zeros(1,numSlices);
%% Zeros osatutako bektorea errepideen abiadura limiteak gordetzeko, elementu kopurura numslices-en araberakoa %%
abiaduralimiteak=zeros(1,numSlices);
%% Zeros osatutako bektoreen elemtu bakoitzari balio bat eman bere elementu zenbakiaren arabera %%
for step= 1: numSlices
    pos(step)=diff*step;
    x= pos(step);    
    [gidariabiadurak(step)] = interpolateLinearly (driverLogKm, driverLogSpeed, x);
    [abiaduralimiteak(step)] = interpolateToTheLeft (limitKms, limitSpeeds, x);
   if gidariabiadurak(step)>abiaduralimiteak(step)
      zatiaknonlimiteapasatu=zatiaknonlimiteapasatu +1;
   end
end    
%% Kalkulatu limitearen gainetik ibilitako km kopurua eta protzentaia bide osoarekiko %%
    %% Limitearen gainetik egon den milometro kopurua  =diff(zati bakoitzak dituen km-ak) * limitetik kanpo ibilitako zatiak 
    kmsAboveSpeedLimit=diff*zatiaknonlimiteapasatu;
    %%kalkulatutako limitearen gainetik egondako kilometro kupurua zati ibilbidearen kilometroak eginez portzengtaia lortzen da%%
    percentAboveSpeedLimit=(kmsAboveSpeedLimit/driverLogKm(length(driverLogKm)))*100;
 end
 
    
     
    
    
    
    
    
    
    
    


