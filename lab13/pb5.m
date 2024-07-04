
f = @(x) x - 0.2*sin(x) - 0.5;
precision = 10^(-6);
solexacta = 0.61546850;

f1 = @(x) 1 - 0.2*cos(x);

x = 0.5;
nriteratii = 0;
disp("Netwon -----");
while(1)
  nriteratii = nriteratii + 1;
  x2 = x - f(x)/f1(x);

  %disp("eroarea la pasul - " + nriteratii + " - e: " + abs(x2 - solexacta));
  if(abs(x - x2) < precision)
    break;
  end
  
  x = x2;
end
disp("solutie Newton: " + x2);
disp("nr iteratii: " + nriteratii);
disp("-----------");

x = [0.5 1];

current = 0;
disp("metoda Secantei");
while(1)
  x(3) = x(2) - f(x(2)) * (x(2) - x(1)) / (f(x(2)) - f(x(1)));
  x(1) = x(2);
  x(2) = x(3);
  current = current+1;
    disp("eroarea la pasul - " + current + " - e: " +  abs(x(2) - solexacta));
  if abs(x(2) - x(1)) <= precision
    break;
  end
end

disp("solutie metoda secantei: " +  x(2));
disp("nr iteratii: " + current);
disp("-----------");

a = 0.5;
b = 1;

iteratiibisectie = 1;
disp("metoda Bisectiei");
while(1)
  c = (a + b) / 2;
  if(f(a)*f(c) <= 0)
    b = c;
  else
    a = c;
  end
  %disp("eroarea la pasul - " + current + " - este: " +  abs(c - solexacta));
  if(abs(f(c)) < precision)
    break;
  end
  iteratiibisectie=iteratiibisectie+1;
end
disp("solutie metoda bisectiei: " + c);
disp("nr iteratii: " + iteratiibisectie);
