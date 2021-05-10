scelta=input("Scegli un tipo di oscillatore:\n\n1 - oscillatore libero non smorzato\n2 - oscillatore libero sottosmorzato\n3 - oscillatore libero sovrasmorzato\n4 - oscillatore forzato smorzato\n")

switch(scelta)
	case 1
		m=1;
		k=0;
		F=0;
		c(1)=1;
		c(2)=0;
	case 2
		m=1;
		k=.5;
		F=0;
		c(1)=1;
		c(2)=0;
	case 3
		m=1;
		k=10;
		F=0;
		c(1)=1;
		c(2)=0;
	case 4
		m=2;
		k=.75;
		F=25;
		c(1)=2;
		c(2)=0;
	otherwise
		disp("Scelta invalida!")
end

h=10;
f=@(t,x) [x(2);(-h*x(1)-k*x(2)+F)/m];
[t,x]=ode45(f,[0 60],c);

hold on
plot(t,x(:,1))
plot(t,x(:,2))
legend("Posizione","Velocità");
pause(60)
