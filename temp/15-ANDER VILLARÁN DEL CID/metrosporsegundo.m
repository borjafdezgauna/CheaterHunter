clc
clear all

kilometroshora=input('Dame la velocidad en kil�metrohora:');
msSpeed=MetrosSegundo(kilometroshora);
fprintf('%.2f kil�metros por hora son %.2f metros por segundo\n', kilometroshora,msSpeed);