
f = @(x) sin(x) - x - 1;
f_derivat = @(x) cos(x) - 1;

x0 = pi/4;
epsilon = 10^(-4);
N=100;

xn = x0;
nriteratii = 0;

for n = 1:N
    nriteratii = nriteratii + 1;
    xn1 = xn - f(xn) / f_derivat(xn);
   if abs(xn1 - xn) < epsilon
        fprintf('solutie dupa %d iteratii: x = %.4f\n', nriteratii, xn1);
        break;
    end

    xn = xn1;
end

fprintf("aproximare: %f\n", xn1);
fprintf("nr de iteratii: %d\n", nriteratii);

