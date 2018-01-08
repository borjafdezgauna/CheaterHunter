clear
clc
datos_a1=dlmread('datos/a1-height-corregido.csv');
datos_n1=dlmread('datos/n1-height-corregido.csv');

%El cambio es de aqui para abajo.

A1=datos_a1(:,3);
N1=datos_n1(:,3);
a=0;
name=' ';

for i={A1 N1}
   a=(a+1);
   data=cell2mat(i);
   media_alturas=sum(data)/length(data);
   desviacion_alturas=std(data);
   valor_min=min(data);
   valor_max=max(data);  
     if a==1
      name='A-1';
        else
         name='N-1';
     end  
   
   fprintf('\nEstadísticas de la ruta %s:\n',name);
   fprintf('Altitud media: %.2f (sd: %.2f)\n',media_alturas,desviacion_alturas);
   fprintf('Rango de altitudes:[%.2f, %.2f]\n',valor_min,valor_max);
end


