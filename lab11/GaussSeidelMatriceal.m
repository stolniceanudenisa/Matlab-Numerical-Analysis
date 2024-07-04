function ret = GaussSeidelMatriceal(A, b, errorValue)
  [n,~] = size(A);
  x = rand(n, 1);
  valprecedenta = rand(n, 1);
  D = diag(diag(A));
  L = tril(A) - D;
  U = triu(A) - D;
  nriteratii = 0;
  norma = inf;
  while(norma > errorValue)
    DplusLX= (-U)*valprecedenta + b;
    DplusL = D + L;
    x = inv(DplusL)*DplusLX;
    nriteratii = nriteratii + 1;
    norma = norm(x-valprecedenta);
    valprecedenta = x;
  end
  disp("Gauss-Seidel - matriceal: ")
  disp(x);
  disp("Nr de iteratii efectuate: :" + nriteratii);

end