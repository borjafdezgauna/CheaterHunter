function [ hms ] = toHMS( seconds )
  %Funtzio honekin, segundutan emandako balio bat ordu, minutu eta segundutan emango dugu.
  
  %Hasteko orduak aterako ditugu.
  orduak=seconds/3600;
  
  %Lortutako balioak zenbaki osotara biribiltzen joango gara aldagai berri batean.
  orduakFix=fix(orduak);
  
  %Gero, segunduei jada baditugun orduak kenduko dizkiegu.
  segunduak1=seconds-orduakFix*3600;
  
  %Ditugun segunduak minututan bihurtuko ditugu.
  minutuak=segunduak1/60;
  minutuakFix=fix(minutuak);
  
  %Segunduei minutuak kenduko dizkiegu, eta lortutako 3 datuak (biribilduta) bistaratuko ditugu.
  segunduak2=segunduak1-minutuakFix*60;
  segunduakFix=fix(segunduak2);
  hms=sprintf('Ordua:%02d:%02d:%02d',orduakFix, minutuakFix,segunduakFix);
  end
  
  
  
  