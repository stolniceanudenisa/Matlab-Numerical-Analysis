x = [8.3, 8.6];

f = [17.56492, 18.50515];

fd = [3.557261, 3.557261];

h = Hermite1(x, f, fd, 8.4);
correct = 8.4 * log(8.4);

fprintf('Approximated using Hermite Interpolation: %.4f\n', h);
fprintf('Correct value of ln(1.5): %.4f\n', correct);
fprintf("The absolute approximation error is: %.4f\n", h - correct);