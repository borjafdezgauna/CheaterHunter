clc

datosA1Driver1 = dlmread('files/a1-driver1-log.csv',',',1,0);
dA1D1 = datosA1Driver1( : , 1 );
vA1D1 = datosA1Driver1( : , 2 );
sA1D1 = length( dA1D1 ) - 1;
rA1D1 = estimateTime( dA1D1 , vA1D1 , sA1D1 );
tA1D1 = toHMS( rA1D1 );

datosA1Driver2 = dlmread('files/a1-driver2-log.csv',',',1,0);
dA1D2 = datosA1Driver2( : , 1 );
vA1D2 = datosA1Driver2( : , 2 );
sA1D2 = length( dA1D2 ) - 1;
rA1D2 = estimateTime( dA1D2 , vA1D2 , sA1D2 );
tA1D2 = toHMS( rA1D2 );

datosN1Driver1 = dlmread('files/n1-driver1-log.csv',',',1,0);
dN1D1 = datosN1Driver1( : , 1 );
vN1D1 = datosN1Driver1( : , 2 );
sN1D1 = length( dN1D1 ) - 1;
rN1D1 = estimateTime( dN1D1 , vN1D1 , sN1D1 );
tN1D1 = toHMS( rN1D1 );

datosN1Driver2 = dlmread('files/n1-driver2-log.csv',',',1,0);
dN1D2 = datosN1Driver2( : , 1 );
vN1D2 = datosN1Driver2( : , 2 );
sN1D2 = length( dN1D2 ) - 1;
rN1D2 = estimateTime( dN1D2 , vN1D2 , sN1D2 );
tN1D2 = toHMS( rN1D2 );

fprintf( 'Estimated time for driver1 in route n1: %s', tN1D1 );
fprintf( '\nEstimated time for driver2 in route n1: %s', tN1D2 );
fprintf( '\nEstimated time for driver1 in route a1: %s', tA1D1 );
fprintf( '\nEstimated time for driver2 in route a1: %s\n', tA1D2 );
