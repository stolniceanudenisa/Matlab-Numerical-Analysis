 
x=linspace(-1,1,100); 
%x= -1:0.01:1; sau asa step 0.01
T1=cos(1*acos(x));
T2=cos(2*acos(x));
T3=cos(3*acos(x));  
%x e vector -> t1 t2 t3 e tot vector
plot(x,T1)
hold on
plot(x,T2,'r')
plot(x,T3,'m')
grid on
title('lab1')