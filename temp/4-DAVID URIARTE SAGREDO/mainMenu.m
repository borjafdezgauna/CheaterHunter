clc
fprintf('\n ##### MENÚ #####')
fprintf('\n 1. Muestra las gráficas y estadísticas de las rutas')
fprintf('\n 2. Muestra las gráficas y estadísticas de los conductores')
fprintf('\n 3. Cálculos de tiempo para cada conductor y ruta')
fprintf('\n 4. Comprobar los límites de velocidad')
fprintf('\n 5. Cálculo de consumo de combustible para cada conductor y ruta')
fprintf('\n 6. Salir')
opc=input('\n Elige una opción');
switch opc
    case 1
        mediadesviacionminmax1
        o=input('Pulsa una tecla para continuar');
        mainMenu
    case 2
        mediadesviacionminmax2
        o=input('Pulsa una tecla para continuar');
        mainMenu
    case 3
        o=input('No hay datos');
        mainMenu
    case 4
        o=input('No hay datos');
        mainMenu
    case 5
        o=input('No hay datos');
        mainMenu
    case 6
        Salir
        o=input('Salir');
        mainMenu
    otherwise
           o=input('Opcion incorrecta: debe ser una numero entre 1 y 6.');
        mainMenu
end
  