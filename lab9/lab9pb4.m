start = 10; final = 15;
for n = start:final
    hij = zeros(n, n);
    for i = 1:n
        for j = 1:n
            hij(i, j) = 1 / (i + j - 1);
        end
    end
    condNumber = cond(hij);
    disp("Conditioning number pt n=" + n + ": " + condNumber);
end
