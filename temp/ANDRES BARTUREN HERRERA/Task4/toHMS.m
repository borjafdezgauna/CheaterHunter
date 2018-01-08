function [ hms ] = toHMS( seconds )

    
    h=fix(seconds/3600);

    s=fix(rem(seconds,3600));

    m=fix(s/60);

    s=fix(rem(s,60));
  
    hms = string ( sprintf('%02d:%02d:%02d',h,m,s) );
    
end