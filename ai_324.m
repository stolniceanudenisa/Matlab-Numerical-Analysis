function ai=ai_324(i, x)
    m=length(x); %m=cate noduri sunt
    p=1;
    for j=1:m 
       if j~=i
           p=p*(x(i)-x(j));
       end
    end
    
    ai=1/p;
end








