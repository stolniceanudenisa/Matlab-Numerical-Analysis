 f = @(x) 100./(x.^2).*sin(10./x);

fplot(f, [1, 3]) % plot functie


quadrature(f, 1, 3, 0.0001) % de folosit adaptive quadrature
% aproximam integrala de la 1 la 2 din f(x) dx cu precizia 10^-4


disp("pt 50 de noduri: "+ simpsonadaptive(f, 1, 3, 50));
disp("pt 100 de noduri: "+ simpsonadaptive(f, 1, 3, 100));

