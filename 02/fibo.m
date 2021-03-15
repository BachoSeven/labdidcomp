function f=fibo(m)
	# Vettore contenente i primi m elementi
	f(1:2)=1;
	for i=3:m
		f(i)=f(i-1)+f(i-2);
	end
end
