function out = simpsonFormula(nodes)
initFunction = @(x) 1./(4+sin(20*x));
vectorNodes = [];
range = linspace(0, pi, nodes);
resultFunction = initFunction(range);
partialSum = sum(resultFunction) - resultFunction(1) - resultFunction(nodes);
for index = 1 : length(range) - 1
  vectorNodes(index)= (range(index+1)+range(index))/2;
end
computedFunction = initFunction(vectorNodes);
finalSum = sum(computedFunction) - computedFunction(1);
simpsonFormulaResult = @(a,b) (b-a)/(6 * nodes)*(initFunction(a) + initFunction(b) + 4 * finalSum + 2 * partialSum);
finalResult = simpsonFormulaResult(0, pi);
out = finalResult
end