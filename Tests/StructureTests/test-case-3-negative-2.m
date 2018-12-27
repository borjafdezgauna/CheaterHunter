function airCons = task_3_fun_computeTotalAirConsume(surfCon,time,depth) %A function that calculates the total air consumption.
maxTime=time(length(time),1); %The last time value is the maximun time.
numpoints=(maxTime/0.1); %How many points we are going to use if we interpolate with delta_t=0.1s.
t=linspace(0,maxTime,numpoints); %A vector that starts at 0 until the last time value with 0.1s between each two points.
airconsVec=zeros(1,numpoints); %A vector of air consumptions that we are going to fill after.
airconsVec(1)=surfCon; %The first value of air consumptions is the air consumption in the surface.
depthInt=zeros(1,numpoints); %A vector of depths after interpolating that we are going to fill after.
depthInt(1)=depth(1); %The first depth value is the first value of the depth vector taken of the file.
a=1; %This will be the counter to take the reference of the time and depth vectors taken from the file.

for i=2:numpoints %This will be repeated for all the positions in the vectors.
      if a==1 %The first position is already defined, so we start from the second.
         a=2;
      end
     
    while a<length(time) && time(a)<t(i) %When the vector of time divided in 0.1s parts reaches a given value in the time taken from the file, it jumps to the nexts given value.
        a=a+1;
    end
   
      depthInt(i)=task_3_fun_interpolate(time(a-1),depth(a-1),time(a),depth(a),t(i)); %It interpolates between points to get the depth at a exact point in time.
      airconsVec(i)=task_3_fun_computeAirConsumeAtDepth(surfCon,depthInt(i)); %It calculates the air consumption in the taken point.
     
end
   airconsVec=airconsVec*(1/60)*0.1; %After having a vector with all the air consumptions every 0.1 seconds. It change the value from l/sec to l/min and we multiply by 0.1 because we have interpolated with delta_t=0.1s.
airCons=sum(airconsVec); %Sum all the consumptions at each point to get the whole consumption.
  
end

