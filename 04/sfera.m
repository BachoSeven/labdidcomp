t=linspace(0,2*pi,100);
s=linspace(0,pi,100);
R=2
[S,T]=meshgrid(s,t);
x=R.*cos(T).*sin(S);
y=R.*sin(T).*sin(S);
z=R.*cos(S);
axis equal
surf(x,y,z)
shading interp
axis off
