function [ hms ] = toHMS( seconds )

h1=seconds/3600;
h=floor(h1);
h1=h1-h;
m1=h1*60;
m=floor(m1);
m1=m1-m;
s1=m1*60;
s=floor(s1);
hms=sprintf('%02d:%02d:%02d\n', h,m,s);


end
