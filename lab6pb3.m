xlim([0,4])
ylim([0,5])
[x, y] = ginput(10);

% plot puncte selectate
plot(x, y, 'ro');


% polinom de grad  
p = polyfit(x, y, 4);
puncte = linspace(0, 4, 100);
y_fit = polyval(p, puncte);

hold on;
plot(puncte, y_fit, 'b-');



