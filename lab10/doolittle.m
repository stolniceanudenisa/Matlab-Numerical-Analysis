function [L, U] = doolittle(M)
    n = size(M, 1); % dimensiunea matricei M
    L = eye(n); % matrice identitate
    U = zeros(n);

    for j = 1:n % peste fiecare coloana a matricei
        % calc eleme de pe randul j al matricei U 
        for i = 1:j
            U(i, j) = M(i, j) - L(i, 1:i-1) * U(1:i-1, j);
        end
        
        % calc elem de pe coloana j a matricei L
        for i = j+1:n
            L(i, j) = (M(i, j) - L(i, 1:j-1) * U(1:j-1, j)) / U(j, j);
        end
    end
end