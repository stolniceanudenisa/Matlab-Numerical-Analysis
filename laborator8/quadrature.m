function rez = quadrature(f, a, b, errorValue)
  integral1 = simpsoncalc(f, a, b); % calc integrala pe intervalul dat
  integral2 = simpsoncalc(f, a, (a+b)/2) + simpsoncalc(f, (a+b)/2, b);  
  % calc integrala pe intervalul impartit in 2 subintervale

  if abs(integral1-integral2)<15*errorValue
    rez = integral2;
  else % repetam procesul
    rez = quadrature(f, a, (a+b)/2, errorValue/2) + quadrature(f, (a+b)/2, b, errorValue/2);
  end
end

function out = simpsoncalc(f, a, b) % calculeaza integrala pe intervalul dat
% folosind formula simpson
  out = (b - a) / 6 * (f(a) + 4 * f((a + b) / 2) + f(b));
end
