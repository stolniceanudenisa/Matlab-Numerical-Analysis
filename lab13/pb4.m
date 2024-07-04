 
f = @(x) (x-2)^2-2*log(x);
% f : [1, 2] - > R
% N = 100

disp("Metoda bisectiei");
[aprox, iteratii] = met_bisectiei(1,2,f,100,10^(-4));
disp("aproximarea: " + aprox);
disp("nr de iteratii: " + iteratii);
disp("-----");


disp("Metoda falsei pozitii");
[aprox, iteratii] = met_falsei_pozitii(1,2,f,100,10^(-4));
disp("aproximarea: " + aprox);
disp("nr de iteratii: " + iteratii);

function [val, nriteratii] = met_bisectiei(a,b,f,N,epsilon)
    nriteratii = 0;
    capete = [a, b];
    for i=1:N
        nriteratii = nriteratii+1;
        c = (capete(1)+capete(2))/2;
        if f(c)*f(capete(2)) < 0
            capete(1)=c;
        end
        if f(c)*f(capete(2)) > 0
            capete(2)=c;
        end
        if abs(f(c)) < epsilon
            val = c;
            return
        end
        val = c;
    end
end


function [val, nriteratii] = met_falsei_pozitii(a,b,f,N,epsilon)
    nriteratii = 0;
    capete = [a, b];
    for i=1:N
        nriteratii = nriteratii+1;
        a = capete(1);
        b = capete(2);
        c = b-f(b)*(b-a)/(f(b)-f(a));
        if f(c)*f(capete(2)) < 0
            capete(1)=c;
        end
        if f(c)*f(capete(2)) > 0
            capete(2)=c;
        end
        if abs(f(c)) < epsilon
            val = c;
            return
        end
        val = c;
    end
end

