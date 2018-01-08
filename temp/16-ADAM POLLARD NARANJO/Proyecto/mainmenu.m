clc;
clear;
opc=1;
while opc>6 || opc<6
fprintf('####### MENÚ ########: \n');
fprintf('1. Muestra las gráficas y estadísticas de las rutas \n');
fprintf('2. Muestra las gráficas y estadísticas de los conductores \n');
fprintf('3. Cálculos de tiempo para cada conductor y ruta \n');
fprintf('4. Comprobar los límites de velocidad \n');
fprintf('5. Cálculo de consumo de combustible para cada conductor y ruta \n');
fprintf('6. Salir \n\n');

opc=input('Elige una opción:');

    
    switch opc
    
        case 1
            Tarea1v2
        
        case 2
            Tarea2v2
            
        case 6
            
        otherwise
            fprintf('\n ERROR \n');
    end
    fprintf('\n')
end
