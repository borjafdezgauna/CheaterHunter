function [hms] = toHMS( seconds )
  
  s=fix(rem(seconds,60));
  min=fix(seconds/60);
  m=rem(min,60);
  h=fix(min/60);
  
  hms=sprintf('%02d:%02d:%02d', h, m, s);
end
  