function Lm=lagrange_324(x,f,y) 
    m=length(x);
    % y vrem sa fie vector nu punct
    % x e vectorul de noduri
    % f e vectorul cu valorile lui f pe noduri
    % y e punctul corect
    N=length(y); %cate puncte vor fi in y, daca vrem sa aplicam Lagrange in mai multe puncte
    for j=1:N
        s1=0;
        s2=0;
        for i=1:m
            ai=ai_324(i,x);
            s1=s1+(ai*f(i))/(y(j)-x(i)); % nu trb . ca e scalar cu elemente din vector
            s2=s2+ai./(y(j)-x(i));
        end
        Lm(j)=s1/s2;
    end
end