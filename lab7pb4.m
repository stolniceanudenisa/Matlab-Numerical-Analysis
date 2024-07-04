a = 0, b = pi;
n = 12;
f = @(x) 1 / (5 + sin(25*x));

x = linspace(0,pi,n);

%pt n =12

suma1 = 0;
suma2 = 0;

for i=2:n
    suma1 = suma1 + f((x(i - 1) + x(i)) / 2);
end

for i=2:n-1
    suma2 = suma2 + f(x(i));
end

IntegralaS1 = (b - a)/(6 * n)*(f(a) + f(b) + 4 * suma1 + 2 * suma2);

fprintf("pt pentru n = %d este %.4f\n", n, IntegralaS1);


% pt n=30

suma1 = 0, suma2 = 0, n = 30;

x = linspace(0,pi,n);

for i=2:n
    suma1 = suma1 + f(((x(i) - 1) + x(i)) / 2);
end

for i=2:n-1
    suma2 = suma2 + f(i);
end

IntegralaS2 = (b - a)/(6 * n)*(f(a) + f(b) + 4 * suma1 + 2 * suma2);

fprintf("pt pentru n = %d este %.4f\n", n, IntegralaS2);

