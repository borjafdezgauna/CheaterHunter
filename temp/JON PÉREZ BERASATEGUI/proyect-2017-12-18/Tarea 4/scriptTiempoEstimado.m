clear
clc

kms = [0 1 2 3];
speedKmH = [40 50 40 30];
numSlices = 1000;
estimatedTime  = estimateTime(kms, speedKmH, numSlices)

