function [ estimatedTime ] = estimateTime( kms, speedKmH, numSlices)
 speedMS = toMetersPerSecond(speedKmH)
 m = dekmam(kms)
 interpolatedSpeed =interpolateLinearli(m,speedMS,numSlices)
 e=(kms(end)-0)/numSlices
 estimatedTime=sum(e/interpolatedSpeed)
end