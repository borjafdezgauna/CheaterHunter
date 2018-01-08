clc

sA1D1 = dlmread('files/a1-driver1-log.csv',',');
sA1D2 = dlmread('files/a1-driver2-log.csv',',');

sN1D1 = dlmread('files/n1-driver1-log.csv',',');
sN1D2 = dlmread('files/n1-driver2-log.csv',',');

subplot(2,1,1);
plot( sA1D1(:,1 ) , sA1D1(:,2) , sA1D2(:,1 ), sA1D2(:,2) );
title('Speed and Km A1')
xlabel('Kms')
ylabel('Speed')

subplot(2,1,2);
plot( sN1D1(:,1 ) , sN1D1(:,2) , sN1D2(:,1 ) , sN1D2(:,2) ) ;
title('Speed and Kms N1')
xlabel('Kms')
ylabel('Speed')


meanN1D1 = mean(sN1D1( : , 2 ));
dtN1D1 = std(sN1D1( : , 2 ));
maximN1D1 = max(sN1D1( : , 2 ));
minimN1D1 = min(sN1D1( : , 2 ));

fprintf('\ndriver1 statistics in route n1:\n');
fprintf('Mean speed: %.2f (dt:%.2f)\n',meanN1D1,dtN1D1);
fprintf('Min-Max speed: [%.2f,%.2f]\n',minimN1D1, maximN1D1 );

meanN1D2 = mean(sN1D2( : , 2 ));
dtN1D2 = std(sN1D2( : , 2 ));
maximN1D2 = max(sN1D2( : , 2 ));
minimN1D2 = min(sN1D2( : , 2 ));

fprintf('\ndriver2 statistics in route n1:\n');
fprintf('Mean speed: %.2f (dt:%.2f)\n',meanN1D2,dtN1D2);
fprintf('Min-Max speed: [%.2f,%.2f]\n',minimN1D2, maximN1D2 );

meanA1D1 = mean(sA1D1( : , 2 ));
dtA1D1 = std(sA1D1( : , 2 ));
maximA1D1 = max(sA1D1( : , 2 ));
minimA1D1 = min(sA1D1( : , 2 ));

fprintf('\ndriver1 statistics in route a1:\n') ;
fprintf('Mean speed: %.2f (dt:%.2f)\n',meanA1D1,dtA1D1);
fprintf('Min-Max speed: [%.2f,%.2f]\n',minimA1D1, maximA1D1 );

meanA1D2 = mean(sA1D2( : , 2 ));
dtA1D2 = std(sA1D2( : , 2 ));
maximA1D2 = max(sA1D2( : , 2 ));
minimA1D2 = min(sA1D2( : , 2 ));

fprintf('\ndriver2 statistics in route a1:\n') ;
fprintf('Mean speed: %.2f (dt:%.2f)\n',meanA1D2,dtA1D2);
fprintf('Min-Max speed: [%.2f,%.2f]\n',minimA1D2, maximA1D2 );


saveas(gcf,'routes-speeds','png')

