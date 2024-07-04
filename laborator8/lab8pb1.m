f=@(x) exp(-x.^2);
a=1; b=1.5;
I = rectangle_formula(f,a,b)
 

% plot dreptunghi ce aproximeaza aria de sub curba
coorodnateXdreptunghi = [ 1 1 1.5 1.5]; % coordonatele x ale colturilor dreptunghiului
coorodnateYdreptunghi = [ 0 I I 0];% coordonatele y ale colturilor dreptunghiului
plot(coorodnateXdreptunghi,coorodnateYdreptunghi,'r', 'LineWidth', 2); % plotam dreptunghiul

hold on;

x = 0:0.05:3;
plot(x,f(x),'black', 'LineWidth', 2); % plotam curba functiei  

rezultatrepetat100 = rectangleRepetat(f,1,1.5,150)
rezultatrepetat500 = rectangleRepetat(f,1,1.5,500)






