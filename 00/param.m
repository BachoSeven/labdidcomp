% 1
	s=linspace(0,50,1000);
	plot( s, s.*sin(s), 'r')
	hold on

% 2
	t=linspace(-2,2,200);
	x=t.*(3-t.^2);
	y=3*t.^2;
	plot(x, y,'g','LineWidth',2)

% 3
