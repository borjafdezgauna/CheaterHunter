clear
clc

function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
  estimatedTime=interp1(kms, speedKmH, numSlices, 'linear')
end


  
 