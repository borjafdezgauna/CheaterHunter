clc;
clear;
opc=1;
while opc>6 || opc<6
fprintf('####### MEN� ########: \n');
fprintf('1. Muestra las gr�ficas y estad�sticas de las rutas \n');
fprintf('2. Muestra las gr�ficas y estad�sticas de los conductores \n');
fprintf('3. C�lculos de tiempo para cada conductor y ruta \n');
fprintf('4. Comprobar los l�mites de velocidad \n');
fprintf('5. C�lculo de consumo de combustible para cada conductor y ruta \n');
fprintf('6. Salir \n\n');

opc=input('Elige una opci�n:');

    
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
