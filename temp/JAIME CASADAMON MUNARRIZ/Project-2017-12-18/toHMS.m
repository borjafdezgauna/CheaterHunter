function [ hms ] = toHMS( seconds )%Prepared to change the seconds given, to receive an output with hours, minutes and seconds

   h=floor((seconds/3600));
   m=floor(rem(seconds,3600));
   m1=floor(m/60);
   s=floor(rem(seconds,60));

   
   a=sprintf('%02d:%02d:%02d',h,m1,s);
   hms=string(a);
   

end