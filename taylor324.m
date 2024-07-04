function t=taylor324(n,x)
    f0=1;
    s=0;
    for k=1:n
        s=s+(1/factorial(k))*x.^k;  
    end
    t=f0+s;
end