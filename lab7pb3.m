r=110;
p=75;
f=@(x)sqrt((1-(p/r).*sin(x)));

a=0;
b=2*pi;

noduri=5;
k=1:1:noduri;

h=(b-a)/noduri;
sumanoduri=a+h:h:b-h;
integrala=((b-a)/(2*noduri))*(f(a)+f(b)+2*sum(f(sumanoduri)));
valoareH=(60*r/(r.^2-p.^2))*integrala
