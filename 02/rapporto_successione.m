function r=rapporto_successione(m)
	# Chiamo la procedure per generare i primi m termini della successione
	g=successione(m);
	format long
	# Determino r (viene stampato in quanto output dello script)
	r=g(m)-g(m-1);

	# Plot per confrontare gli andamenti di g_n e p^n
	for i=1:m
		y1(i)=r^i;
		y2(i)=g(i);
	end
	semilogy(y1)
	hold on
	semilogy(y2)
end
