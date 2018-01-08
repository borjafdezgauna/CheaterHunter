function Yinterpolatua = interpolazioa( xVector, yVector,x)
%Aurkitu zein bi punturen artean dagoen x
i=2;

while i<length(xVector) && xVector(i)<=x  
i= i+1; 
end
%bektoreetan deskomposaketa datuak
y2= yVector(i);
y1= yVector(i-1);
x2= xVector(i);
x1= xVector(i-1);

malda=(y2-y1)/(x2-x1); %maldaren formula

Yinterpolatua= y1 + malda * (x-x1); %formula general de interpolacion lineal

end