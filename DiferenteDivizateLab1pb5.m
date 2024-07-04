function D=DiferenteDivizateLab1pb5(x,f)
    m=length(x);
    D= zeros(m,m);
    D(:,1)=f';
    for j=1:m-1
        for i=1:m-j
            D(i,j+1)=(D(i+1,j)-D(i,j))/(x(i+j)-x(i));
        end
    end
end
