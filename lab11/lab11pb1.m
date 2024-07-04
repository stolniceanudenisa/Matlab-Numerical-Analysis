A = [8  2  4;
     3  5  1;
     2  1  4 ];     
b = [-16; 4; -12];

x=[0 0 0]; % vector rezultat
 
Jacobi(A ,b ,x , 10^(-3))
GaussSeidel(A ,b ,x , 10^(-3))
RelaxationMethod(A ,b ,x , 10^(-3), 1.3)
 