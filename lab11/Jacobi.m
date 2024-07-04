% alg iterativ  pentru a rezolva un sistem de ecuații liniare de forma 𝐴𝑥=𝑏

% metoda imbunatateste treptat o estimare initiala pana când solutia converge la soluția reala în cadrul unei 
% tolerante specificate (epsilon).

function Jacobi(A, b , x , epsilon)
  nriteratii = 0;
  epsiloncurent = inf; % setat la infinit pt a porni while ul

  while(epsiloncurent > epsilon)
    valoareprecedenta = x; % stocare anterioara a lui x pt comparatie
    for i = 1:length(A) % iterare prin matricea A
      x(i) = b(i); % val coresp din vectorul b
      suma_rez = 0; % suma pt elem nediagonale
      for j= 1:length(A)
        if(i ~= j)
            suma_rez = suma_rez + A(i,j).*valoareprecedenta(j);
        end
      end
      x(i) = x(i) - suma_rez; % scadem din suma b(i)
      x(i) = x(i) ./ A(i,i); % impartim la elem diagonal
     end
    nriteratii = nriteratii + 1;
    epsiloncurent = abs(valoareprecedenta-x);
  end
  disp("Solutie - Jacobi: ");
  disp(x);
  nriteratii=nriteratii-1;
  disp("Nr de iteratii efectuate: " + nriteratii);
end
