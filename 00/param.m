# Keep plots
	hold on

# 1
	s=linspace(0,50,1000);
	plot( s, s.*sin(s), 'r')

# 2
	t=linspace(-2,2,200);
	X=t.*(3-t.^2);
	Y=3*t.^2;
	plot(X, Y, 'g','LineWidth',2)

# 3
	M=zeros(200);
	Z=linspace(-5,5,200);
	for i=1:200
		for j=1:200
			y=Z(i);
			x=Z(j);
			f =((x-1)^2+y^2-4)*((x+1)^2+y^2-4)*(x^2+(y-sqrt(3))^2-4);
			if(f<10)
				M(i,j)=1;
			elseif(f<5)
				M(i,j)=5;
			elseif(f<1)
				M(i,j)=10;
			end
		end
	end
	imagesc(M)
