function out = rectangleRepetat(f,a,b,n)
  out=(b-a)/n; % lungimea fiecarui subinterval
  x1=a+(b-a)/(2*n); % coord x a primului pct de mij al primului subinterval
  xn=x1+(n-1)*(b-a)/n; % coord x a ultimului pct de mij al primului subinterval
  x=linspace(x1,xn,n); % generam vector x ce contine coordonatele x ale tuturor punctelor de mijloc ale subintervalelor
  out=out.*sum(f(x)); % suma functiei in fiecare pct de mij al subintervaului * lungimea fiec subinterval
end