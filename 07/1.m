for n=1000:1000:10000
	d=ones(1,n);
	sd=0.5*ones(1,n-1);
	Sd=0.1*ones(1,n-1);

	# Full
	A=diag(d)+diag(sd,-1)+diag(Sd,1);
	tic
	[L,U]=lu(A);
	tfull(n/1000)=toc;

	# Sparse
	B=sparse(A);
	tic
	[L,U]=lu(B);
	tsparse(n/1000)=toc;
end

hold on
plot(tfull,'Linewidth',3,'g')
plot(tsparse,'Linewidth',3,'r')
pause(100)

# Man mano che n cresce il rapport tsparse/tfull va a 0
