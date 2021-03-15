function rfibplot(n)
	# Questo valore di c anche per valori n>5000 è meno accurato di quello dato nel foglio di esercizi, quindi usiamo quello
	# v=rfibonacci(1000);
	# c=(abs(v(end)))^(1/n);
	c=1.13198824;
	for i=1:n
		y2(i)=c^i;
	end
	rf=abs(rfibonacci(n));
	semilogy(rf)
	hold on
	semilogy(y2)
end
