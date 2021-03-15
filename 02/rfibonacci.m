function f=rfibonacci(m)
	# Vettore dei primi m elementi
	f(1:2)=1;
	a=[1 -1];
	for i=3:m
		p=a(randi(2));
		f(i)=f(i-1)+p*f(i-2);
	end
end
