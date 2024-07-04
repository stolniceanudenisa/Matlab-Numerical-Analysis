x = linspace(0,2*pi,100);
f = @(x) sin(2*x);

% plot grafic functie
plot(x, f(x), 'LineWidth', 2);
hold on;

num_intervals = 8;
nodes = linspace(0, 2*pi, num_intervals + 1);
f_values = f(nodes);

% plot linear spline  
for i = 1:num_intervals
    % define interval [xi, xi+1]
    xi = nodes(i);
    xi1 = nodes(i+1);
   
    linear_spline = @(x)f_values(i)+((f_values(i+1)-f_values(i))/(xi1-xi))*(x-xi);
    valori_x_interval = linspace(xi, xi1, 100);
    % plot pt linear spline corespunzator
    plot(valori_x_interval, linear_spline(valori_x_interval), '--', 'LineWidth', 1);
end

grid on;
