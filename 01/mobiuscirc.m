function mobiuscirc
	t=0:pi/100:2*pi;
	v=exp(i*t)+1;
	# Draw the circle using v
	plot(v)
	axis([-5 10 -5 5],'equal');
	hold on;
	# Apply a Mobius transformation to v with a=5,b=5,1,1 (a=first and b=last matricola digit) and store the points in a vector w
	a=6;
	b=5;
	w=(a*v + b)./(v+1);
	# Plot w on the same graph
	plot(w)

	# What is the resulting image? What are the properties of this mobius transformation?
	# Answer: translation by 1 to the right + radius decrease
end
