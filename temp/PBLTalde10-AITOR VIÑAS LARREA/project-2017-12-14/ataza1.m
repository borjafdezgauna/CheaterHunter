
for i={'n1-height.csv','a1-height.csv'};
    errepideak=dlmread(i{1},',',1,0);
    subplot(1,2,1)
plot(errepideak(:,4),errepideak(:,3))
hold on
title('altuera/kilometro')
xlabel('km');
ylabel('altuera');
subplot(1,2,2)
plot(errepideak(:,2),errepideak(:,1))
hold on
title('latitude/longitude')
xlabel('longitudea');
ylabel('latitudea');
end 
