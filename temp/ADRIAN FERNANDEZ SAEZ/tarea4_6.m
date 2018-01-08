s = ['a' , 'n'];
l = ['1' , '2'];
for i = 1 : length(s)
    for k=1 :length (l)
        a=sprintf ('%s1-driver%s-log.csv',s(i),l(k));
        v=dlmread (a,',',1,0);
b=v(:,1);
c=v(:,2);
d=estimateTime(b,c,2000);
e=toHMS(d);
sprintf('Estimated time for driver%s in route %s1: %s ',l(k),s(i),e);
    end
end
