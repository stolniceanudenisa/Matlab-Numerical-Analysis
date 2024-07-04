function rombergAitkenResult = romberg_aitken(f, a, b, n,  precision)
  T = zeros(n,n); % mat ce are estimarile integralelor
  for i = 1:n
    T(i,1) = fct(a,b,i,f); % calc estimarile integralelor pt toate ordinele de aproximare
  end
  for j = 2:n % col de la 2 la n
    for i=j:n
      if(abs(T(j,j)-T(j-1,j-1)) < precision)
% dacă dif abs dintre 2 elemente consec de pe 
% diagonala principala este 
% < precizia specif.
        break;
      end
      T(i,j) = ((4^(-j))*T(i-1,j-1)-T(i,j-1))/((4^(-j))-1); % apl form R-A pt a estima integrala
    end
  end
  rombergAitkenResult = T(n,n); % estimarea finala care e in coltul din dreapta sus al mat T
end

function result = fct(a, b, n, f) % calc estimarea integrala prin met trapezelor compuse
  x = linspace(a, b, n + 1);
  result = (b - a) / (2 * n) * (f(a) + f(b) + 2 * sum(f(x(2:n))));
end