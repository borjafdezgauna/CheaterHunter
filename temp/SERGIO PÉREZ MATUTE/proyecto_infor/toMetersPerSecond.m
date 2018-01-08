function [msSpeed] = toMetersPerSecond (speedKmH)
msSpeed= speedKmH/3.6;
fprintf('toMeters (%.2f)=> (%.3f)',speedKmH,msSpeed)
end