%%funtzio honek distantzia bati dagokion abiadura interpolatzen du numSlices tarte kopurua erabiliaz

function [ denbora ] = estimateTime(Kms, speedKmH, numSlices)
Ms=toMeters(Kms);    %%kilometroak metrotara pasatzen ditugu
speedMs= toMetersPerSecond(speedKmH);    %%km/h-ak m/s-tara pasatzen ditu
diferentzia=Ms(end)/numSlices;    %%ibilbidearen luzera tarte erregularretan zatitzen du


denbora=0;    %%denbora aldagaia sortzen dugu 0 balioaz
for i = linspace(Ms(1), Ms(end), numSlices)   %%ibilbidearen hasietarik amaierara bitartean tarte kopuruarekiko zatitzen dugu eta bektore bat sortzen du
  v=interpolazioa(Ms,speedMs,i);    %%abiadura kalkulatzeko interpolazioa funtzioa erabiltzen du
  if v==0   %%geldik dagoenean x/0 ezin denez egin t=0 jartzen dugu errorerik eman ez dezan
   t=0; 
  else
  t=diferentzia/v;   %%tartea egiteko emandako denbora kalkulatzen dugu
  end
  denbora=denbora+t;    %%tarteak egiteko denborak batzen ditugu denbora totala kalkulatzeko
end
end