a1_height = dlmread('project-files/a1-height.csv',',',1,0);
n1_height = dlmread('project-files/n1-height.csv',',',1,0);

subplot(1,2,1)
hold on
plot(a1_height(:,4),a1_height(:,3));
plot(n1_height(:,4),n1_height(:,3)),xlabel('distance(km)'),ylabel('height(m)'),title('Height');

subplot(1,2,2)
hold on
plot(a1_height(:,2),a1_height(:,1));
plot(n1_height(:,2),n1_height(:,1)),xlabel('longitude'),ylabel('latitude'),title('Routes');

A = (a1_height(:,4));
meanheight = mean(A);
minHeight = min(A);
maxHeight = max(A);
standardeviation = std(A);
fprintf('a1 route statistics:\n Mean height: %.2f (sd: %.2f)',meanheight,standardeviation)
fprintf('\n Height range: [%.2f, %.2f]',minHeight,maxHeight)

N = (n1_height(:,4));
meanheight1 = mean(N);
minHeight1 = min(N);
maxHeight1 = max(N);
standardeviation1 = std(N);
fprintf('\n \n n1 route statistics:\n Mean height: %.2f (sd: %.2f)',meanheight1,standardeviation1)
fprintf('\n Height range: [%.2f, %.2f]',minHeight1,maxHeight1)

