function d=hilblin(n)
	# Make an nxn hilbert matrix A
	for i = 1:n
		for j = 1:n;
			A(i,j) = 1/(i+j-1);
		end
	end
	# Print the (bad) conditioning of A
	cond(A)

	# make a linear system of which we know the solution to
	u=ones(10,1);
	b=A*u;

	# Solve the system using mldivide
	w=mldivide(A,b);
	# Get the 2-norm of the answer minus the exact solution
	d=norm(w-u,2);
end
