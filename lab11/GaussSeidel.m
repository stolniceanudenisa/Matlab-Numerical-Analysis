function GaussSeidel(A, b, x, epsilon)
  nriteratii = 0;
  epsiloncurent = inf;
  while(epsiloncurent > epsilon)
    valoareprecedenta = x;
    for i = 1:length(A)
      x(i) = b(i);
      suma_rez = 0;
      for j= 1:i-1
        suma_rez = suma_rez + A(i,j).*x(j); % folosim valorile actualizate ale lui x(j) pentru j < i
      end
      for j= i+1:length(A)
        suma_rez = suma_rez + A(i,j).*valoareprecedenta(j);
      end
      x(i)=x(i)-suma_rez;
      x(i)=x(i)./A(i,i);
      end
    nriteratii = nriteratii + 1;
    %epsiloncurent = abs(valoareprecedenta-x);
    epsiloncurent = max(abs(valoareprecedenta - x));
  end
  disp("Solutie - Gauss-Seidel: ");
  disp(x);
  nriteratii=nriteratii-1;
  disp("Nr de iteratii efectuate: " + nriteratii);
end