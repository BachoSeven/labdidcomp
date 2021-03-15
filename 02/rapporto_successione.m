function r=rapporto_successione(m)
	g=successione(m);
	for k=2:m
		G(k-1)=g(k)/g(k-1);
	end
	format long
	r=G(end);
	# Plot per confrontare gli andamenti di g_n e p^n
	for i=1:m
		y1(i)=r^i;
		y2(i)=g(i);
	end
	semilogy(y1)
	hold on
	semilogy(y2)
end
