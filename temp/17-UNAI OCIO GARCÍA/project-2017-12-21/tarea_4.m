clear all
clc 

x=input('Introduce el numero de intervalos: '); %Pedimos el numero de secciones en los que vamos a dividir el vector
for carretera={'n1','a1'} %cargamos excel de las dos carreteras
  for conductor={'1','2'} %cargamos excel de los conductores
    
    g=sprintf('%s-driver%s-log.csv',carretera{1},conductor{1}); %imprimimos el nombre de los excels
    N=dlmread(g,',',1,0); %leemos y abrimos los Excel
      
      xVector=N(:,1); %datos necesarios
      yVector=N(:,2);
    w=estimateTime(xVector,yVector,x); %usamos la funcion estimateTime para calcular el tiempo de conductor y ruta 
    T=EnHMS(w); %usamos la funcion EnMHS para expresar el tiempo en el formato indicado
    fprintf('El tiempo estimado de conduccion del conductor %s en la ruta %s es %s\n\n',conductor{1},carretera{1},T)
    
  end
end