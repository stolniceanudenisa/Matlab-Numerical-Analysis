x = linspace(-5, 5, 15);
f = sin(2.*x);
fd = 2.*cos(2.*x);
puncte= linspace(-5, 5, 100);
plot(x, f, 'x');
hold on
plot(puncte,hermite324(x,f,fd,puncte))
