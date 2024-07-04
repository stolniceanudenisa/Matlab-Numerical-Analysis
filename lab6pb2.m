%x=altitudine
%f=oxigen
%p=polyfit(x,y,3) nr=grad polinom
%raspuns=polyval(p,753)

x=[0,500,1000,2500,5000,8500];
y=[20.9,19.6,18.4,15.3,11.2,7.2];
p1=polyfit(x,y,1);
p2=polyfit(x,y,4);
raspuns1=polyval(p1,753); % oxygen_753m
raspuns2=polyval(p2,6000);% oxygen_6000m

p=polyfit(6000,9.9,4);
raspuns3=polyval(p,6000);
raspuns3-raspuns2
 
%  Plot pct de interpolare si polinoame de interpolare
vector = linspace(0, 9000, 100);
interpolation_p1 = polyval(p1, vector);
interpolation_p2 = polyval(p2, vector);

plot(x, y, 'o');
hold on; 
plot(vector, interpolation_p1, 'r' );%'polinom de grad 3'
plot(vector, interpolation_p2); % 'polinom de grad 4'

