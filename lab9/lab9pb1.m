disp("---------------")
A = [
10 8 -2 7;
2 3 0 1;
-3 2 6 9;
7 5 9 10];

B = [5;-8;3;12]; 

% a) 
disp("Solutie sistem: ")
X=linsolve(A,B)
disp("Conditioning number: "+cond(A))

%nr cond -> indica cat de mult se amplifica erorile din vectorii de intrare in solutia 
% sistemului de ecuatii liniare asociat. 
%nr mare -> problema sensibila la erori



disp("---------------")
% b) A*x2=b2
B2 = [5.6; -8.2; 3.9; 12.4];

sol = linsolve(A,B2)
input_relative_error = norm(B-B2)/norm(B); % ||b-b2|| / ||b||
disp("Input relative error este: " + input_relative_error)

output_relative_error = norm(X-sol)/norm(X);  % ||x-x2|| / ||x||
disp("Output relative error este: " + output_relative_error)


disp("---------------")

D = [
10 8.54 -2.13 7.2;
2.12 3.1 0.6 0.99;
-3 1.83 5.7 9.1;
6.77 5.23 8.87 10];
disp("Solutie sistem: ")

sol2 = linsolve(D, B) 
input_relative_error_2 = norm(A-D)/norm(A);
disp("Input relative error este: " + input_relative_error_2)


output_relative_error_2 = norm(X-sol2)/norm(X);
disp("Output relative error este: " + output_relative_error_2)

