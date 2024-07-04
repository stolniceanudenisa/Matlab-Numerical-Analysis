function x = gaussPartialElimination(A, b)
    n = length(b);
    A = [A b]; % matricea extinsa
    
    % pivotare partiala
    for p = 1:n-1
        % rand cu val max in coloana comuna

        [~, q] = max(abs(A(p:n, p))); % indicele elementului maxim din coloana p
         q = q + p - 1;
        

        % daca pivotul e 0

        if A(q, p) == 0
            disp('sistem incompatibil');
            return; % dam exit
        end

        % interschimbam liniile p si q din A si b daca trebuie
        
        if q ~= p
            A([p q], :) = A([q p], :);
        end

        % facem zerouri sub A(p, p) eliminam elementele sub pivot
        for i = p+1:n
            factor = A(i, p) / A(p, p);
             A(i, p:n+1) = A(i, p:n+1) - factor * A(p, p:n+1);
        end
    end

    % verificam daca ultimul element pivot = 0
    if A(n, n) == 0
        disp('sistem incompatibil');
        return;
    end

    % solutiile x
     x = zeros(n, 1);
    for i = n:-1:1
         x(i) = (A(i, end) - A(i, 1:n) * x) / A(i, i);
    end

    disp('solutie:');
    disp(x);
end
