x=[9, 10, 11, 12, 13, 14, 15];
f=[12,10,8,11,15,17,13];
m = length(x);

a = ((m + 1) * sum(x.*f) - sum(x)*sum(f))/((m + 1) * sum(x.*x) - sum(x) * sum(x));
b = (sum(x .* x)*sum(f)-sum(x.*f)*sum(x))/((m + 1)*sum(x.*x)-(sum(x)*sum(x)));

ff = a * x + b;
plot(x, ff);
grid on

f16 = a * 16 + b;

E = 0;
for k = 1:m
    E = E + (f(k) - ff(k))^2;
end
E

%aprox la ora 16
ff = a*16+b

 
plot(x,f, 'o')
hold on
interval = linspace(0,50, 100);
plot (interval, (a.*interval+b))