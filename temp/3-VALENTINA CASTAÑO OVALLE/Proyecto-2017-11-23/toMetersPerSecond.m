function [msSpeed] = toMetersPerSecond(speedKmH)

    while speedKmH>0
        msSpeed=(speedKmH*1000)/3600
    end
end    
