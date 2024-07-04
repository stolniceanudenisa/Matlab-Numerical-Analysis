 
h=0.2;
k=0:1:5;
xk=1+k*h;
yk=sqrt(2*xk.^2+3);

//tabel generat pe diferente divizate bazat pe x si f

% a) diferente finite
diferente_fin = zeros(length(yk));   %  creare matrice doar cu zerouri
diferente_fin(:, 1) = yk';           % punem pe prima coloana coordonatele y0 = sqrt(5)=2.23... ,y1...
for j = 2:length(yk)    % incepand de la a 2 a coloana se pun diferentele de ordin 1
    for i = 1:length(yk)-j+1 % mergem incepand cu prima linie
        diferente_fin(i, j) = diferente_fin(i+1, j-1) - diferente_fin(i, j-1);   % prima 2.4249  - 2.2361 = 0.1888
    end
end

disp(diferente_fin);



% 2. y4 modificat

epsilon = 10.^-3;   % sau  = 1e-3
yk_nou = yk;
yk_nou(5) = yk_nou(5) + epsilon; % modificam y4

diferente2 = zeros(length(yk_nou));
diferente2(:, 1) = yk_nou';
for j = 2:length(yk_nou)
    for i = 1:length(yk_nou)-j+1
        diferente2(i, j) = diferente2(i+1, j-1) - diferente2(i, j-1);
    end
end

disp(diferente2);



% c) diferente impartite
dif_imp = zeros(length(yk));
dif_imp(:, 1) = yk';
for j = 2:length(yk)
    for i = 1:length(yk)-j+1
        dif_imp(i, j) = (dif_imp(i+1, j-1) - dif_imp(i, j-1)) / (xk(i+j-1) - xk(i)); % formula la diferente impartite
    end
end

disp(dif_imp);


