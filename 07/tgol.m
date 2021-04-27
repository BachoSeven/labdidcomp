function tgol(n,X,k)

	spy(X)

	for i=1:k
		U=([X(2:n-1,:);zeros(1,n)]);
		D=([zeros(1,n);X(1:n-1,:)]);
		L=([X(:,2:n-1);zeros(n,1)]);
		R=([zeros(n,1);X(1:n-1,:)]);
		UL=([U(:,2:n-1);zeros(n,1)]);
		DL=([D(:,2:n-1);zeros(n,1)]);
		UR=([zeros(n,1);U(1:n-1,:)]);
		DR=([zeros(n,1);D(1:n-1,:)]);
		Y=U+D+L+R;
		Z=X==1
		Y+=Z
		X=Y==3
		drawnow
	end
end
