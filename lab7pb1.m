initFunction=@(x)3/(1+2*(x.^2));
Integral=((b-a)*(initFunction(a)+initFunction(b)))/2
Simpson=((b-a)/6)*(initFunction(a)+4*initFunction((a+b)/2)+initFunction(b))

a = 0;
b = 1;
f = @(x) 3./(1 + 2*(x.^2));
Integral = ((b-a)*(f(a)+f(b)))/2;
Simpson = ((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b));
x = linspace(a, b, 1000);
y = f(x);    
plot(x, y, 'b');
hold on;
fa = f(a);
fb = f(b);
plot([a, a, b, b], [0, fa, fb, 0], 'r');
hold on;
plot(a, fa, 'ro');
hold on;
plot(b, fb, 'ro');