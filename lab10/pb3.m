
% Hk : akx1 +bkx2 +ckx3 +dkx4 +ekx5 +fkx6 = zk

%a1=3, b1=-1, z1=2
%3x1−x2+0⋅x3+0⋅x4+0⋅x5+0⋅x6 =2
%3x1-x2=2 

 %z1 =z6 =2 and zk =1, for all k = 2,5;
  %◦ a1 =b2 =c3 =d4 =e5 =f6 =3;
  %◦ b1 =c2 =d3 =e4 =f5 =−1;
  %◦ a2 =b3 =c4 =d5 =e6 =−1;
  %◦ all other coefficients are zero.

A = [3 -1 0 0 0 0;
    -1 3 -1 0 0 0;
    0 -1 3 -1 0 0;
    0 0 -1 3 -1 0;
    0 0 0 -1 3 -1;
    0 0 0 0 -1 3];

b = [2; 1; 1; 1; 1; 2];

x_initial = zeros(6, 1);
 
Jacobi(A, b, x_initial, 10^(-3));

GaussSeidel(A, b, x_initial, 10^(-3));

RelaxationMethod(A, b, x_initial, 10^(-3), 1.25);