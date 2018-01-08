%we change from seconds to hours minutes and seconds by using  fix and rem
function [ hms ] = toHMS( seconds )
      HH=fix(seconds/3600);
      MM=fix(rem(seconds,3600)/60);
      SS=rem(rem(seconds,3600),60);
      hms=sprintf('%0.2d:%0.2d:%02.0f',HH,MM,SS);
end
