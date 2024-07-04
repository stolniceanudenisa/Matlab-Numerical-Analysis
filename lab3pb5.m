function lab3pb5()

% alg lui Neville - metoda de interpolare ce poate gasi o valoare apropiata
% a unei functii intr un punct dat, folosind un set de noduri si valorile
% corespunzatoare ale fct in aceste noduri

% val e obtinuta in partea de dreapta jos a tabelului

    function result = neville_interpolation(x, nodes, values)
        n = length(nodes); % nr de noduri d
        Q = zeros(n); % initializam matricea cu 0 
        Q(:,1) = values; % setam prima coloana cu valorile values care sunt functii ce corespund nodurilor date

        for i = 2:n
            for j = 2:i % incepem de la a doua coloana
                Q(i,j) = ((x-nodes(i-j+1))*Q(i,j-1)-(x-nodes(i))*Q(i-1,j-1))/(nodes(i)-nodes(i-j+1));
            end
        end

        result = Q(n,n);
    end

    % definire functii + noduri echidistante
    n = 5;
    x_f = linspace(0, 2, n); % noduri pt f(x) = 5^x
    f = 5.^x_f;

    x_g = linspace(0, 5, n); % noduri pt g(x) = sqrt(x)
    g = sqrt(x_g);

    % aproximam f(1/2) cu alg lui Neville
    approx_f_2 = neville_interpolation(1/2, x_f, f);

    % aproximam g(5) cu alg lui Neville
    approx_g_5 = neville_interpolation(5, x_g, g);

    fprintf('aprox pt f(1/2): %.4f\n', approx_f_2);
    fprintf('aprox pt g(5): %.4f\n', approx_g_5);
end
