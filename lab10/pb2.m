M = [6 2 1 -1; 2 4 1 0; 1 1 4 -1; -1 0 -1 3];
b = [8; 7; 5; 1];

[L, U] = doolittle(M); % [L, U] = lu(M)

%  L*Z= b
Z = zeros(size(b));
for i = 1:length(b)
    Z(i) = (b(i) - L(i, 1:i-1) * Z(1:i-1));
end

%  U*x = Z
x = zeros(size(b));
for i = length(b):-1:1
    x(i) = (Z(i) - U(i, i+1:end) * x(i+1:end)) / U(i, i);
end


disp('Matricea L:');
disp(L);
disp('Matricea U:');
disp(U);
disp('Solutia -> vectorul x:');
disp(x);