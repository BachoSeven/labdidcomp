function perturbed_poly(p,t)
	n=size(p,2);
	r=roots(p);
	p(n)+=t;
	s=roots(p);
	plot(r,"*")
	hold on
	plot(s,"*")
end
