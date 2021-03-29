x=linspace(-3,3,200);
y=linspace(-3,3,200);
z=linspace(-3,3,200);

[X,Y,Z]=meshgrid(x,y,z);

F=X.^3+Y.^3-3*X.*Y;

isosurface(X,Y,Z,F,0,X)
