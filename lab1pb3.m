x=-1:0.01:3;
f=exp(x);
plot(x,f,'r-.')
hold on % vrem sa mai plotam inca ceva pe deasupra 5 polinoame taylor
for n=1:6
    t=taylor324(n,x);
    plot(x,t)
    hold on

end    

f2=exp(2);
for n=1:6
    t2=taylor324(n,2);
    err=abs(f2-t2)    
    % eroare e modulul din valoarea reala si aproximarea
    hold on
end 

% aproximam f(2) cu fiecare polinom taylor