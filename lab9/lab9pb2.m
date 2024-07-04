start=10; final=15;
for index=start:final
    rez = zeros(index, 1);
    for k=1:index
        rez(k) = 1./k;
    end
    matriceVandermonde = vander(rez); % mat vandermonde asociata vectorului
    rezmatrice = fliplr(matriceVandermonde); % inversa
    condNumber = cond(rezmatrice);
    disp("Conditioning number pt n= " + index + ": " + condNumber);
end