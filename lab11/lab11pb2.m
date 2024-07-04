A = [ 5  -1  0  0;
     -1  5  -1  0;
      0 -1  5  -1;
      0  0 -1  5];
b = [7; -10; -6; 16];


JacobiMatriceal(A, b, 0.001);
GaussSeidelMatriceal(A, b, 0.001);
RelaxationMatriceal(A, b, 0.001, 0.9);


% 1,-2,-1,3 solutia

 
 