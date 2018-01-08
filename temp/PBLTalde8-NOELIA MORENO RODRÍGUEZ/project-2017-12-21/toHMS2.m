function hms=toHMS(seconds)
  h=fix(seconds/3600);
  m=fix(rem(seconds,3600)/60);
  s=fix(rem(seconds,60));
  hms=sprintf('%02d:%02d:%02d',h,m,s);
  end