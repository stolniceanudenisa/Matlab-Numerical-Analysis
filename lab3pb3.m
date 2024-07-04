f = @(x) exp(cos(x)); % declarare functie anonima

n = 15;
% declaram n puncte distantate uniform intre 0 si 5 pt interpolare
x_interpolation = linspace(0, 5, n);

y_interpolation = f(x_interpolation);

x_range = linspace(0, 5, 100);
y_range = f(x_range);
 
% vector de valori unde stocam valorile interpolate
y_newton = zeros(size(x_range));

% calc val interpolata pt fiecare punct din xrange
for i = 1:length(x_range)
    y_newton(i) = newton1(x_interpolation, y_interpolation, x_range(i));
end

plot(x_range, y_range, 'b-');
hold on;
plot(x_range, y_newton, 'bl--');
plot(x_interpolation, y_interpolation, 'go');





grid on;