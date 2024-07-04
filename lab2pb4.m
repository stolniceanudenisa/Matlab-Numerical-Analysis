% am definit functia
n = 1:14;
f = (3*tan(n.^2))./(n.^2+2);

% plot pt functie
plot(n, f, 'rx');
hold on

% punctele de interpolare definite
x_interp = 1:0.01:14;

% calculam val fct in pct de interpolare
f_interp=(3*tan(x_interp.^2))./(x_interp.^2+2);

% plot Lagrange interp. polinom
plot(x_interp, lagrange_324(n, f, x_interp), 'b');

% aproximari pt f(2.5) si f(8.75)
f_2_5 = lagrange_324(n, f, 2.5);
f_8_75 = lagrange_324(n, f, 8.75);

% rezultate aproximari
fprintf('Aproximare f(2.5): %f\n', f_2_5);
fprintf('Aproximare f(8.75): %f\n', f_8_75);
