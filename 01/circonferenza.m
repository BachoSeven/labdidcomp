function circonferenza(c,r)
	t=0:pi/100:2*pi;
	v=r*(exp(i*t))+c;

	plot(v)
end
