x=1960:10:2020;
f=[18458008,19922618,22125224,22836234,21919876,20335211,19442038];
y=[1974,2005,2035];
r=lagrange_324(x,f,y);
fprintf('1974-%8.3f\n',r(1));
fprintf('2005-%8.3f\n',r(2));
fprintf('2035-%8.3f\n',r(3));
% nodurile sunt anii
% valorile pe noduri = populatia
% nu stim functia

plot(x,f,'*');
hold on
t=1960:0.5:2020;
Lt=lagrange_324(x,f,t);
plot(t,Lt)