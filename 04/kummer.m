x = linspace(-200,200,100);
y = linspace(-200,200,100);
z = linspace(-200,200,100);

[X,Y,Z] = meshgrid(x,y,z);

p=Z-1+sqrt(2).*X;
q=Z-1-sqrt(2).*X;
r=Z+1+sqrt(2).*Y;
s=Z+1-sqrt(2).*Y;

u=2;
d=(3*u-1)(3-u);

f=X.^2+Y.^2+Z.^2-u;
rhs=d*p.*q.*r.*s;
F=f.^2-rhs;

axis equal
isosurface(X,Y,Z,F,0,X)
