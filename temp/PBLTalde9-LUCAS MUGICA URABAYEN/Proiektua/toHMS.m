function [hms]=toHMS(seconds)
%%segundu kopuru bat sartuta erloju moduan denbora itzuli 
orduak=fix(seconds/3600);
  
  minutuak=fix((rem(seconds,3600))/60);             %%fix agindua zenbaki osoa lortzeko
  
  segunduak=fix(rem(rem(seconds,3600),60));         %%rem agindua hondarra lortzeko
  hms=sprintf('%02d:%02d:%02d',orduak,minutuak,segunduak);
  end