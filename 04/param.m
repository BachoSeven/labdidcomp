t=0:.02:4*pi;
x=(2+cos(1.5*t)).*cos(t);
y=(2+cos(1.5*t)).*sin(t);
z=2*sin(1.5*t);

plot3(x,y,z)
