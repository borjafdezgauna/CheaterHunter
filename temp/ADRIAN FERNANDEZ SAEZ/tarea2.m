s={'a','n'};
l={'1','2'};
for i=1:length(s)
    for k=1:length(l)
    hold on
a=sprintf('%s1-driver%s-log.csv',s{i},l{k});
v=dlmread(a,',',1,0);
b=v(:,1);
c=v(:,2);
subplot(2,1,1);
plot (b,c);
title('Velocidad')
xlabel('t(min)')
ylabel('v(km/h)')
hold off
u=mean(c);
o=std(c);
M=max(c);
m=min(c);
sprintf('Estadisticas del conductor%s en la ruta %s1:',l{k},s{i})
sprintf('Velocidad media: %.2f (sd:%.2f)',u,o)
sprintf('Rango de velocidades: [%.2f, %.2f]',m,M)
saveas(gcf,'speed.png')
    end
end
