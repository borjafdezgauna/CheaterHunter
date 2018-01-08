
%We used a function to calculate both routes fuel expenditure on both drivers.

total_Fuel = 0;

function [ fuelExpenditure ] = calculateRouteFuelExpenditure(routeKms,routeHeights,logKms,logSpeeds,numSlices)

end_Vector = toMeters(routeKms(end));
index = 1;
loop = 0;
slice_Size = toMeters(routeKms(index)/numSlices);

for loop = 0:slice_Size:end_Vector
    
    %We are calculating the speed, acc, and theta in every point
    %(based on numSlices) to input them in the formula and sum them up.
    %We get the speed at a certain point, and the speed at a close point.
    %Speed change divided by time difference equals acceleration at that 
    %point.
    
    index = index + 1;
    
    current_Speed_Mt = interpolateLinearly(logKms, logSpeeds, logKms(index))*1000/3600;
    close_To_Current_Speed_Mt = interpolateLinearly(logKms, logSpeeds, logKms(index - 1))*1000/3600;
    
    delta_V = current_Speed_Mt - close_To_Current_Speed_Mt;
    
    current_Time_S = toMeters(logKms(index))/current_Speed_Mt;
    close_To_Current_Time_S = toMeters(logKms(index-1))/close_To_Current_Speed_Mt;
    
    delta_T = current_Time_S - close_To_Current_Time_S;
    
    current_Acceleration = delta_V/delta_T;
    
    %Slope: one point divided by other point, gives us the slope. 
    %Arctan of slope equals radians of slope.
    
    y2 = routeHeights(index);
    y1 = routeHeights(index - 1);

    x2 = routeKms(index);
    x1 = routeKms(index - 1);
    
    current_Slope_Rads = atan((y2 - y1)/(x2 - x1));
    
    routeKms_To_Mt = toMeters(routeKms(end));
    
    %Now, once we have therequired parameters to know the the needed truck's
    %physical stats, we input all these variables in the given formula.
    %Store the fuel used in that section and add to an accumulator.
    
    current_Fuel = calculateFuelExpenditure(current_Speed_Mt, current_Acceleration, current_Slope_Rads,  routeKms_To_Mt);
    total_Fuel = total_Fuel + current_Fuel;

end

fuelExpenditure = total_Fuel;

end
