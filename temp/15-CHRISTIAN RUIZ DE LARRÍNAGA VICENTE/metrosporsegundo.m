clc
clear all

kilometroshora=input('Dame la velocidad en kilómetrohora:');
msSpeed=MetrosSegundo(kilometroshora);
fprintf('%.2f kilómetros por hora son %.2f metros por segundo\n', kilometroshora,msSpeed);