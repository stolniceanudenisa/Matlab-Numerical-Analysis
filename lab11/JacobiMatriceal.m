function ret = JacobiMatriceal(A, b, eroare)
  [n,~] = size(A);
  x = rand(n, 1); % init x cu val aleatorii
  valprecedenta = rand(n, 1);% init vector precedent cu val aleatorii
  D = diag(diag(A)); % matricea diagonala a lui A
  L = tril(A) - D; % mat triunghiulara inferioara fara diagonala lui A
  U = triu(A) - D;% mat triunghiulara superioara fara diagonala lui A
  nriteratii = 0;
  norma = inf;
  while(norma > eroare)
    dx= -(L+U)*valprecedenta + b; %(D + L + U)*x + b
    x = inv(D)*dx; % rez sistem D * x = dx
    nriteratii = nriteratii + 1;
    norma = norm(x-valprecedenta); % calculul normei diferentei
    valprecedenta = x;
  end
  disp("Jacobi - matriceal: ")
  disp(x);
  disp("Nr de iteratii efectuate: :"+ nriteratii);
end
