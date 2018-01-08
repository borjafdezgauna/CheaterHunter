function [ fuelExpenditure ] =
calculateRouteFuelExpenditure(routeKms,routeHeights,logKms,logSpeeds,num
Slices )

consumo=0;
pto_dist=0;
sl_dist=0;
k=1;

for i=1:lenght(logKms)-1
  pto_dist=toMeters(logKms(i+1))-toMeters(logKms(i));
  sl_dist=pto_dist/numSlices;
  sl_pto=toMeters(logKms(i));
  
  
for j=1:numSlices
  
  velocidad_intervalo(k)=interpolateLinearly([toMeters(logKms(i)),toMeters(logKms(i+1))][toMetersPerSecond(logSpeeds(i)),toMetersPerSecond(logSpeeds(i+1))],sl_pto);
  
 d(k)=sl_pto;
 k=k+1;
 
 puntosy_pendiente_intervalo(k)=interpolateLinearly([toMeters(routeKms(i)),toMeters(routeKms(i+1))],[toMeters(routeHeights(i)),toMeters(routeHeights(i+1))],sl_pto);
 
sl_pto=sl_pto+sl_dist;

end

end

aceleracion_intervalo=[0]
aceleracion_intervalo=[aceleracion_intervalo,diff(velocidad_intervalo)];

diferencia_puntosy_intervalo=diff(puntosy_pendiente_intervalo)/sl_dist;
pendiente_slices=atan(diferencia_puntosy_intervalo);


for h=1:lenght(velocidad_intervalo)
  consumo=consumo+calculateFuelExpenditure(velocidad_intervalo(h),aceleracion_intervalo(h),pendiente_slices(h),sl_dist);
  end
  
  fuelExpenditure=consumo;
  
  
  end
  
  
  
  













end