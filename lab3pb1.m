
y=[2.5, 3.26]; % aici y e vector
x= 1.2:0.4:4;
f=log(x);

% aproximam lg(25) and lg(326)
r1 = newton1(x,f,2.5);
r2 = newton1(x,f,3.26);

%plot(x, f, 'r');
%hold on;
 
% valorile date in enunt
lg_25_given = 0.39794;
lg_326_given = 0.5132176;


fprintf('aprox pt lg(2.5): %.5f\n', r1);
fprintf('aprox pt lg(3.26): %.5f\n', r2);
fprintf('enunt lg(2.5): %.5f\n', lg_25_given);
fprintf('enunt lg(3.26): %.8f\n', lg_326_given);


% plot date tabel + Newton interp polinom
plot(x, f, 'r'); % plot data din tabel
hold on;


y_values = [lg_25_given, lg_326_given];
scatter(y, y_values, 'k', 'filled'); % plot lg(2,5) si lg(3,26) points
% scatter -> plasam pe grafic y si yvalues ce reprezinta 
% perechile de valori (yi,lg(yi))



% plot polinom interpolare
plot(y, y_values, 'b--');  
xlabel('x');
ylabel('lg(x)');

legend('Datele din tabel', 'Punctele date', 'Polinomul de interpolare', 'Location', 'northwest');
title('Polinomul lui Newton pt lg(x)');

%y = (10:30) / 10;
% eroarea de estimare
max_error = max(abs(y_values - newton1(x, f, y)));
fprintf('Eroarea maxima de interpolare: %.8f\n', max_error);



% sau 
% for k=1:length(y)
% r(k)=newton1(x,f,y(k));  se construieste vector de rezultate

% plot(y(k), r(k)); -- pt problema 2
% end
% r  -- ne afiseaza vectorul




