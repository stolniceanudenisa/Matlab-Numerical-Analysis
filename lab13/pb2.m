N=6;
f = @(x) x-(4*sin(x)-pi)/5;
% f'(x) = 1 - (4/5) * cos(x)
f_deriv = @(x) 1 - (4/5) * cos(x);

xn =1;
nriteratii = 0;
    for n=1:N
        nriteratii = nriteratii+1;
        xn1 = xn-f(xn)/f_deriv(xn);
         fprintf('iteratia %d: x = %.6f\n', n, xn1);  
        xn = xn1;
    end
    fprintf("aproximarea: %f\n", xn);
    fprintf("nr de iteratii: %d\n", nriteratii)