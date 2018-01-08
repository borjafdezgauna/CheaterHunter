
heights1 = dlmread('files/a1-height.csv',',',1,0);
heights2 = dlmread('files/n1-height.csv',',',1,0);

%grafic = figure;

subplot(1,2,2);
plot( heights1(:,2) , heights1(:,1) , heights2(:,2) , heights2(:,1)) ;
title('Routes')
xlabel('Latitudes')
ylabel('Longitudes')

subplot(1,2,1);
plot( heights1(:,4) , heights1(:,3) , heights2(:,4) , heights2(:,3)) ;
title('Heights')
xlabel('Distance from origin (kms)')
ylabel('heights (ms)')

meanN1 = mean(heights2( : ,3));
sdN1 = std(heights2( : ,3));
maxN1 = max(heights2( : ,3));
minN1 = min(heights2( : ,3));

fprintf('\nn1 route statistics:');
fprintf('\nMean height: %.2f (sd:%.2f)',meanN1,sdN1);
fprintf('\nHeight range: [%.2f,%.2f]\n',minN1, maxN1 );

meanA1 = mean(heights1( : ,3));
sdA1 = std(heights1( : , 3));
maxA1 = max(heights1 ( : ,3));
minA1 = min(heights1 ( : ,3));

fprintf('\nai1 route statistics:') ;
fprintf('\nMean height: %.2f (sd:%.2f)',meanA1,sdA1);
fprintf('\nHeight range: [%.2f,%.2f]\n',minA1, maxA1 );

saveas(gcf,'routes-elevations','png')


disp('Press any key to continue...')
pause
