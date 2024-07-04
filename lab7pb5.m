x = 0.5, a = 0, b = x; 
f = @(t)exp(-t^2);
    
suma1 = 0, suma2 = 0;

% pt n=4
n = 4;
xv = linspace(a, b, n);
    
for i=2:n
    suma1 = suma1 + f(((xv(i - 1)) + xv(i)) / 2);
end
    
for i=2:n-1
    suma2 = suma2 + f(xv(i));
 end
 
integralaS=(b-a)/(6 * n)*(f(a)+f(b)+4*suma1+ 2*suma2);
    
fprintf(" pt n = %d -> %.4f\n", n, (2 / sqrt(pi)) * integralaS);


% pt n=10
n = 10; suma1 = 0, suma2 = 0;
xv = linspace(a, b, n);
    
for i=2:n
    suma1 = suma1 + f(((xv(i - 1)) + xv(i)) / 2);
end
    
for i=2:n-1
    suma2 = suma2 + f(xv(i));
 end
 
integralaS=(b-a)/(6 * n)*(f(a)+f(b)+4*suma1+ 2*suma2);
    
fprintf(" pt n = %d -> %.4f\n", n, (2 / sqrt(pi)) * integralaS);


