M =dlmread ('a1-driver1-log.csv',',');

a = max (M(:,2))
b = min (M(:,2))
c = mean(M(:,2))
d = std (M(:,2))
Y = sprintf 
X=sprintf ('min-max speed :[%d,%d]',b,a )
disp (X)