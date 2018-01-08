function  [hms]  = toHMS(totalseconds) 

hours = fix(totalseconds/3600);

minutes = fix(rem(totalseconds,3600)/60);

seconds = fix(rem(rem(totalseconds,3600),60));

hms = sprintf('%02d:%02d:%02d',hours,minutes,seconds);

end

