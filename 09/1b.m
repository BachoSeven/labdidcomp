m=1;
k=0;
c(1)=0;
c(2)=1;
h=4;
a=1;
# w=1.5;
# w=1.8; # battimenti (vicino alla frequenza del sistema)
w=2; # sqrt(h) --> risonanza

F=@(t) a*cos(w*t);
f=@(t,x) [x(2);(-h*x(1)-k*x(2)+F(t))/m];
[t,x]=ode45(f,[0 60],c);

hold on
plot(t,x(:,1),'b')
legend("Posizione");
plot(t,F(t),'r')
legend("Forza esterna");
pause(60)
