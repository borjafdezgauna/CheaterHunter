function [ hms ] = toHMS( seconds )
h=(seconds/3600);
e= floor(h);
q= ((h-e)*60);
t= floor(q);
s= ((q-t)*60);
hms=fprintf('%02.0f:%02.0f:%02.0f',e,t,s);
end


