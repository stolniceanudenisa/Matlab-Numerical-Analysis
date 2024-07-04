x=-1:0.01:1;
T0=1;
T1=x;
plot(x,T0)
hold on
plot(x,T1)
for n=1:10
       T2=2*x.*T1-T0;  %inmultire cu .* pentru ca si x si T1 sunt vectori
       plot(x,T2)
       hold on
       T0=T1;
       T1=T2;
end      