num=input('introduce un numero ');
while num~=6 
    if num<1 || num>6
       disp('El numero introducido tiene que estar entre 1 y 6, porfavor intentelo mas tarde. Gracias!!!');
        elseif num == 1
        run('Tarea1.m');
        elseif num==2
        run('Tarea1.m');
        elseif num==3
        run('Tarea4.m');
        elseif num==4
            disp('Esta tarea no esta hecha')
       % run('Tarea5.m');
        elseif num==5
            disp('Esta tarea no esta hecha')
        %run('Tarea6.m');            
    end
    num=input('introduce un numero ');    
end
   