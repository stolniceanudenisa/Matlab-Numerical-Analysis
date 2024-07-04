% definire functie
x = -1:0.01:1;
f = log(x+2);

% plot pt functie
plot(x, f, 'r');
hold on;

% puncte de interpolare definite
x_interp=linspace(-1,1,13); 
% x_interp = linspace(-1, 1, numel(x));

% calculam val fct in pct de interpolare
f_interp=log(x_interp+2);

% plot Lagrange interp. polinom
plot(x, lagrange_324(x_interp, f_interp, x), 'b');
