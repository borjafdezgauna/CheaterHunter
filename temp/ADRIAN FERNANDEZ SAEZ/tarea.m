s={'a','n'};
for i=1:length(s)
    hold on
a=sprintf('%s1-height.csv',s{i});
v=dlmread(a,',',1,0);
b=v(:,1);
c=v(:,2);
subplot(2,1,1);
plot (c,b);
title('Rutas')
xlabel('Longitud')
ylabel('Latitud')
hold off


end

for i=1:length(s)
    hold on
f=sprintf('%s1-height.csv',s{i});
v=dlmread(f,',',1,2);
g=v(:,1);
h=v(:,2);
subplot(2,1,2);
plot (h,g);
title('Alturas')
xlabel('Distancia(km)')
ylabel('Altura(m)')
hold off
u=mean(g);
o=std(g);
M=max(g);
m=min(g);

sprintf('Estadisticas de la ruta %s1:',s{i})
sprintf('Altura media: %.2f (sd:%.2f)',u,o)
sprintf('Rango de alturas: [%.2f,%.2f]',m,M)
saveas(gcf,'route-elevations.png')
end



