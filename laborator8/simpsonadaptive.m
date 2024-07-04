function out = simpsonadaptive(f,a,b,n)
    h = (b-a)/(n); % lungimea fiec subinterval
    p=0; % pt suma valorilor functiei la punctele intermediare ale subintervalelor
    q=0;
    for k=1:2:(n-1) % parcurgem subinterv de la primul la penultimul cu pas 2
        %iteram doar prin pct intermediare
        x=a+h*k; % calc coord x a pct interm
        p=p+f(x); % adaugam val fct in aceasta coord la suma p
    end 
    for k=2:2:(n-1)% parcurgem subinterv de la al doilea la penultimul cu pas 2
        x=a+h*k; % pt fiecare interval cu indice par
      q=q+f(x);
    end
  out = h/3*(f(a)+f(b)+4*p+2*q); % formula simpson adaptiva
end