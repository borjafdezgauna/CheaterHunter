B=dlmread('a1-height.csv',',',1,0);
A=dlmread('n1-height.csv',',',1,0);
H=mean(A(:,3));
sd=std(A(:,3));
Hrange=[min(A(:,3)),max(A(:,3))];
disp('N1 gidaria');
disp(H);
disp(sd);
disp(Hrange);
H1=mean(B(:,4));
sd1=std(B(:,4));
Hrange1=[min(B(:,4)),max(B(:,4))];
disp('A1 gidaria');
disp(H1);
disp(sd1);
disp(Hrange1);



