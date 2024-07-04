x = [1, 2];

f = [0, 0.6931];
fd = [1, 0.5];

fprintf('Approximated ln(1.5) using Hermite Interpolation: %.4f\n', Hermite1(x, f, fd, 1.5));
fprintf('Correct value of ln(1.5): %.4f\n', log(1.5));
fprintf("The absolute approximation error is: %.4f\n", Hermite1(x, f, fd, 1.5) - log(1.5));