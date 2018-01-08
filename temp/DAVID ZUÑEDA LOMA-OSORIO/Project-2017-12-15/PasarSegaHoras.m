x=234.4;

h=floor((x/3600));
m=floor(rem(x,3600));
m1=floor(m/60);
s=floor(rem(x,60));


a=sprintf('%02d:%02d:%02d',h,m1,s)

hms=string(a)