function [ hms ] = toHMS( seconds )
orduak=fix(seconds/3600);
minutuak=fix(rem(seconds,3600)/60);
segunduak=fix(rem(seconds,60));
hms=sprintf('%02d:%02d:%02d',orduak,minutuak,segunduak);
end




    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

