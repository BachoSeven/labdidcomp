function logcirc
	# Verify that `log` maps S^1 onto (-i*pi,i*pi)
	t=0:pi/100:2*pi;
	v=exp(i*t);
	plot(v)
	axis([-10 10 -10 10],'equal');
	hold on;
	# Taking the complex logarithm of v
	w=log(v);
	plot(w)

	# Draw circles with center 0 and radius 1,...,10; apply `log` to the points used for the circles, and draw the results on the same graph.
	figure(2)
	for r=2:10
		axis([-10 10 -10 10],'equal');
		v=r*exp(i*t);
		plot(v)
		hold on;
		plot(log(v))
	end
end
