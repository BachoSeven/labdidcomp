function ferncolor(m)
	# Definizioni iniziali
	b1=[0;1.6];
	b2=[0;1.6];
	b3=[0;0.44];
	b4=[0;0];
	A1=[0.85 0.04; -0.04 0.85];
	A2=[0.20 -0.26; 0.23 0.22];
	A3=[-0.15 0.28; 0.26 0.24];
	A4=[0 0;0 0.16];
	# Partizione di [0,1]
	p1=0.85;
	p2=0.92;
	p3=0.99;
	p4=1;

	# Punto iniziale
	S(:,1)=[0.5; 0.5];
	for k=1:m
		r=rand;
		if(r<=p1)
			S(:,k+1)=A1*S(:,k)+b1;
			S(3,k+1)=0; # verde
		elseif(p1<r && r<=p2)
			S(:,k+1)=A2*S(:,k)+b2;
			S(3,k+1)=1; # blu
		elseif(p2<r && r<=p3)
			S(:,k+1)=A3*S(:,k)+b3;
			S(3,k+1)=2; # rosso
		else
			S(:,k+1)=A4*S(:,k)+b4;
			S(3,k+1)=3; # viola
		end
	end

	# 3a riga =1 -> 3 vettori logici che

	# plot(S(1,Ind),S(2,Ind),'g.')

	axis off
	plot(S(1,:),S(2,:),'g.')

end
