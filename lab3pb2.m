
puncte = [1,2,3,4,5];
studenti = [30,26,22,32,28];
puncte_dorite = 3.5;

% estimam nr de studneti la punctul de pe axa X specificat de puncte dorite
% rezultatul ramane in approx_students
approx_students = newton1(puncte, studenti, puncte_dorite);

fprintf('Aproximare studenti 3.5 : %f\n', approx_students);

% generam o linie continua in grafic, un vector de 100 de puncte
% egal cu dist(cea mai mica val, cea mai mare val) dintre puncte

x_values = linspace(puncte(1), puncte(end), 80);

y_values = newton1(puncte, studenti, x_values);

plot(puncte, studenti, 'o', x_values, y_values, '-')