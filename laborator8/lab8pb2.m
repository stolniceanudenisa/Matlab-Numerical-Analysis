f=@(x) 2./(1+x.^2);
disp("Romberg: " + romberg(f, 0, 1, 0.0001));
disp("Romberg Aitken: "+ romberg_aitken(f,0,1,13,0.0001));

