function r=rapporto_successione(m)
	# Chiamo la procedure per generare i primi m termini della successione
	g=successione(m);
	format long
	# Determino r(rho) (come rapporto degli ultimi due elementi)
	r=g(m)/g(m-1);

	# Plot per confrontare gli andamenti di g_n e p^n
	# Osservazione dopo la modifica: ora hanno un andamento simile)
	for i=1:m
		y1(i)=r^i;
		y2(i)=g(i);
	end
	semilogy(y1)
	hold on
	semilogy(y2)
end
