# Soluzione del sistema di ODE di Lorenz nell'intervallo [0,100]

## Parametri (sigma, rho, beta)
s=10;
r=28;
b=8/3;

## Dati iniziali
c1=[1 1 1];
v=1+10^(-5);
c2=[v v v];

## Notazione
# F è il sistema di ODE
# x è il vettore che contiene x,y,z
# t rappresenta il tempo
F=@(t,x) [s*(x(2)-x(1));r*x(1)-x(2)-x(1)*x(3);x(1)*x(2)-b*x(3)];

[t,x1]=ode45(F,[0,17.57],c1);
[t,x2]=ode45(F,[0,17.57],c2);

hold on
plot(t,x1(:,1),'b')
# plot(t,x2(:,1),'r')
# figure(2)
# plot(t,x1(:,2),'b')
# plot(t,x2(:,2),'r')
# figure(2)
# plot(t,x1(:,3),'b')
# plot(t,x2(:,3),'r')
# figure(3)
# plot3(x1(:,1),x1(:,2),x1(:,3),'b')
# plot3(x2(:,1),x2(:,2),x2(:,3),'r')
pause(60)
