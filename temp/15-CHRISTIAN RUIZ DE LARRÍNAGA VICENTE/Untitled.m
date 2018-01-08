x=[1920 1930 1940 1950 1960 1970 1980 1990];
y=[106.46 123.08 132.12 152.27 180.67 205.05 227.23 249.46];
n=length(x); %número de pares de datos
p=polyfit(x,y,n-1);
%A=vander(x);
%p=A\y' %sistema de ecuaciones lineales, y' es vector columna
z=@(xx) polyval(p,xx);

fprintf('Población en el año 2000, %3.2f\n',polyval(p,2000))
hold on
plot(x,y,'bo','markersize',3,'markerfacecolor','b')
fplot(z,[1920,2000])
xlabel('x')
ylabel('y')
grid on
title('Extrapolación');
hold off