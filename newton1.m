function Nw=newton1(x,f,y)
    m=length(x);
    p=1;
    s=f(1);   
    D=DiferenteDivizateLab1pb5(x,f); 
    for i=1:m-1
       % p=p*(y-x(i));
        p=p.*(y-x(i));

        s=s+p*D(1,i+1);
    end
    Nw=s;
end
