function [ msSpeed ] = toMetersPerSecond( speedKmH )
msSpeed=speedKmH*1000/3600;
end
%We use this simple funciton so we can calculate easily speed calculated in 
%kilometers per hour to meters per second.