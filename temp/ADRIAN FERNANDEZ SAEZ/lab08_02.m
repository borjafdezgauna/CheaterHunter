piso=[1 2 3];
lado={'a','b'};
habitacion=[1,2,3,4,5];
for i=1:length(piso)
    for j=1:length(lado)
        for k=1:length(habitacion)
    a=sprintf('P%02d-%s-H%02d',piso(i),lado{j},habitacion(k));
    disp(a)
        end
    end
end