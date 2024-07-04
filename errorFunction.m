function out = errorFunction(f, n)
x = linspace(0, 0.5, n);
rez = f(x);
partialSum = sum(rez) - rez(1) - rez(n);
noduri = [];
for i=1:length(x)-1
  noduri(i)=(x(i+1)+x(i))/2;
end
sumStep = f(noduri);
finalSum = sum(sumStep) - sumStep(1);
integralasimpson = @(a,b) (b-a)/(6*n)*(f(a) + f(b) + 4 * finalSum + 2 * partialSum);
eroare_rez = @(x) 2/sqrt(pi) * integralasimpson(0, x);
out = eroare_rez(0.5);
end
