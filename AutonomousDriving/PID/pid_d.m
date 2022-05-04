%Patient Model
p=2;
ng= [ 1] ; dg= [ 1 2*p p^2];
%PID Controller+pump model : Gc (s ) Gp ( s)
Kl=5;K2=7;K3=2; %PID 2 gains
dc= [ 1 0 0 ] ;
nc=[K2 K1 K3 ] ;
%Closed-loop transfer functions from disturbance to output
[ num, den ] =feedback (ng, dg, nc, dc);

%step Responses
tf=20 ; %maximum time for settling
t=[ 0 :0.1:tf ] ;
Do=50 ; %Do is the disturbance magnitude
yc=step (-Do*num, den,t) ;
%Generate step response plots
plot (t, yc)
grid
ylabel ( 'Percent decrease in mean arterial pressure (%) ')
xlabel ( ' Time (min) ' )
title ( 'Mean arterial pressure (MAP) disturbance step response. ' )
