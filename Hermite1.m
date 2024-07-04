function h=Hermite1(x,f,fd,t)
    m=length(x);
    A=zeros(2*m,2*m);
    D=DiferenteDivizateLab1pb5(x,f);
    for i=1:m
        z(2*i-1)=x(i);
        z(2*i)=x(i);
        fz(2*i-1)=f(i);
        fz(2*i)=f(i);
    end
    A(:,1)=fz';
    for i=1:m
        A(2*i-1,2)=fd(i);
        A(2*i,2)=D(i,2);
    end
    for j=3:2*m
        for i=1:2*m-j+1
            A(i,j)=(A(i+1,j-1)-A(i,j-1))/(z(i+j-1)-z(i));
        end
    end
    prima_linie=A(1,:);
    p=1;
    s=fz(1);
    for i=1:2*m-1
        p=p*(t-z(i));
        s=s+p*prima_linie(i+1);
    end
    h=s;
end

