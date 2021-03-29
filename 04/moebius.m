u=linspace(0,2*pi,500);
v=linspace(-0.4,0.4,500);

[U,V]=meshgrid(u,v);

x=cos(U)+V.*cos(U/2).*cos(U);
y=sin(U)+V.*cos(U/2).*sin(U);
z=V.*sin(U/2);

colormap spring
axis equal
mesh(x,y,z)
