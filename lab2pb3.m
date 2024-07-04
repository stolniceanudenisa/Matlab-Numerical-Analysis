x=0:0.01:20;
f=(2+sin(3*pi*x))./(1+x.^2);
plot(x,f,'m');

nodes=linspace(0,20,24);
f_nodes=(2+sin(3*pi*nodes))./(1+nodes.^2);

hold on
plot(x,lagrange_324(nodes,f_nodes,x),'b')

