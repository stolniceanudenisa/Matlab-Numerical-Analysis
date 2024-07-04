x=[0,pi/2,pi,3*pi/2,2*pi];
f=cos(x);
t=pi/4;
int=0:0.01:2*pi;
plot(int,spline(x,f,int))
hold on
plot(int, spline(x, [0 f 0], int)) % -sin in 0 si -sin in 2pi
plot(int,cos(int))
plot(x,f,'o')
grid on
axis equal