[x,y] = ginput(5);
plot(x,y,'*');
int=min(x):0.01:max(x);
hold on
plot(int,spline(x,y,int))