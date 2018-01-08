function [hms] = toHMS(seconds)
s=0; 
mins=0; 
h=0;  
for i=1:seconds 
    s=s+1;
    if s==60
        mins=mins+1;
        s=0;
    end
    if mins==60
        h=h+1;
        mins=0;
    end
    
end

hms=sprintf('%02d:%02d:%02d',h,mins,s);
end

