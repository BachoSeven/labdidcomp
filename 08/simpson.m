function S=simpson(f,a,b,N)
	h=(b-a)/N;
	Sum1=Sum2=0;

	# N deve essere pari
	for j=1:N/2-1
		Sum1+=f(a+2*j*h);
		Sum2+=f(a+(2*j-1)*h);
	end
	Sum2+=f(a+(N-1)*h);

	S=h/3*(f(a)+f(b)+2*Sum1+4*Sum2);
end
