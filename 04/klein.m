u=linspace(0,2*pi,100);
v=linspace(0,2*pi,100);
[U,V]=meshgrid(u,v);

x=cos(U).*(cos(0.5*U).*(sqrt(2)+cos(V))+sin(0.5*U).*sin(V).*cos(V));
y=sin(U).*(cos(0.5*U).*(sqrt(2)+cos(V))+sin(0.5*U).*sin(V).*cos(V));
z=-sin(0.5*U).*(sqrt(2)+cos(V))+cos(0.5*U).*sin(V).*cos(V);

axis equal
mesh(x,y,z)
