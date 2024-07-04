start = 10; final = 15;
for index = start:final
    rez = zeros(index, 1);
    for k = 1:index
        rez(k) = -1 + 2*k/index;
    end
    matriceVandermonde = vander(rez);
    rezmatrice = fliplr(matriceVandermonde);
    condNumber = cond(rezmatrice);
    disp("Conditioning number pt n=" + index + ": " + condNumber);
end
