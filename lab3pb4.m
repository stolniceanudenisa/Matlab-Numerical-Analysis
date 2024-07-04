x = [144, 169, 196, 225];
f = sqrt(x);
m = length(x); % nr de pcte de interpolare
aitken = zeros(m,m); % initializare matrice

for i = 1:m
    aitken(i,1) = x(i); % punem pe prima coloana valorile xi
    aitken(i,2) = f(i); % a doua coloana -> f(xi)
end

% vrem sa interpolam pct 178
t = 178;

% alg lui AITKEN
for i = 2:m
    for j = 2:i
        if i ~= j % evitam impariri la 0
            aitken(i,j+1)=(1./(x(i)-x(j))).*(aitken(j, j)*(x(i)-t)-aitken(i,j).*(x(j)-t));
        end
    end
end

% ap0pximarea
sqrt_178_approx = aitken(m, m);
fprintf('aproximarea lui sqrt 178: %.4f\n', sqrt_178_approx);

