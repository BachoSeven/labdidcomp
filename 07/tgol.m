function tgol(k,X,N)
  for i=1:k
    spy(X,'s','r')

		# Direzioni Cardinali
    L=[X(:,2:N),zeros(N,1)];
    R=[zeros(N,1),X(:,1:N-1)];
    U=[X(2:N,:);zeros(1,N)];
    D=[zeros(1,N);X(1:N-1,:)];

		# Direzioni Diagonali
    UL=[U(:,2:N),zeros(N,1)];
    DL=[D(:,2:N),zeros(N,1)];
    UR=[zeros(N,1),U(:,1:N-1)];
    DR=[zeros(N,1),D(:,1:N-1)];

    Y=U+D+L+R+UL+UR+DL+DR;

    X=Y==3|(Y==2&X==1);

    drawnow
  end
end
