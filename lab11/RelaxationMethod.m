% imbunatatire Gauss-Seidel
% omega pentru a accelera convergenta

function RelaxationMethod(A, b, x, epsilon, omega)
  nriteratii = 0;
  epsiloncurent = inf;
  while(epsiloncurent > epsilon)
    valprecedenta = x;
    for i = 1:length(A)
      x(i) = b(i);
      sumarez = 0;
      for j= 1:i-1
        sumarez = sumarez + A(i,j).*x(j);% folosim valorile actualizate ale lui x(j) pentru j < i
      end
      for j= i+1:length(A)
        sumarez = sumarez + A(i,j).*valprecedenta(j); % folosim valorile anterioare ale lui x(j) pentru j > i
      end
      x(i) = x(i) - sumarez;
      x(i) = x(i) ./ A(i,i);
      x(i) = x(i) .* omega;
      x(i) = x(i) + ((1-omega).*valprecedenta(i));
      end
    nriteratii = nriteratii + 1;
    %epsiloncurent = abs(valprecedenta-x);
    epsiloncurent = max(abs(valprecedenta - x));
  end

  disp("Solutie - relaxation method: ");
  disp(x);
  nriteratii=nriteratii-1;
  disp("Nr de iteratii efectuate: " + nriteratii);
end