function out = simpson(f, n)
valori = linspace(0, pi, n);
noduri = [];
rez = f(valori);
partialSum = sum(rez) - rez(1) - rez(n);
for i=1:length(valori)-1
  noduri(i)=(valori(i+1)+valori(i))/2;
end
sumStep = f(noduri);
finalSum = sum(sumStep) - sumStep(1);
integralasimpson = @(a,b) (b-a)/(6*n)*(f(a) + f(b) + 4 * finalSum + 2 * partialSum);
final = integralasimpson(0, pi);
out = final;
end