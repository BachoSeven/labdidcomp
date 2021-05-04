function S=trapezi(f,a,b,N)
	h=(b-a)/N;
	Sum=0;
	for i=1:N-1
		Sum+=f(a+i*h);
	end
	S=h*((f(a)+f(b))/2+Sum);
end
