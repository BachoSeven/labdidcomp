u=linspace(0,2*pi,100);
v=linspace(-0.4,0.4,100);

[U,V]=meshgrid(u,v);

x=cos(U)+V.*cos(U/2).*cos(U);
y=sin(U)+V.*cos(U/2).*sin(U);
z=V.*sin(U/2);

axis equal
mesh(x,y,z)
axis off
pause(10)
