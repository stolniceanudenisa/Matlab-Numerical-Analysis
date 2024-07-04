x=-1:0.01:1;
f=2*x.^2+cos(3*x);
plot(x,f,'r--')
hold on
%T1=1; trb sa fortam 1 sa fie vector T1=1*ones(1,length(x)) 1 linie, col cat lungimea lui x 
T1=1*ones(1,length(x));
T2=1-5/2*x.^2;   %parabola cu ramurile in jos pt ca semnul lui x^2 e minus
plot(x,T1)
hold on
plot(x,T2)