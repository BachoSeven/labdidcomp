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
	M=zeros(300);
	Z=linspace(-5,5,300);
	for i=1:300
		for j=1:300
			y=Z(i);
			x=Z(j);
			f =((x-1)^2+y^2-4)*((x+1)^2+y^2-4)*(x^2+(y-sqrt(3))^2-4);
			if(f<10)
				M(i,j)=10;
			elseif(f<5)
				M(i,j)=5;
			elseif(f<1)
				M(i,j)=1;
			end
		end
	end
	figure(3)
	imagesc(M)

# 3 alt
	v=-5:.01:5;
	[x,y]=meshgrid(v);
	z =((x-1).^2+y.^2-4).*((x+1).^2+y.^2-4).*(x.^2+(y-sqrt(3)).^2-4)<1;
	z=double(z);
	z(z==0)=NaN;
	figure(3)
	plot3(x,y,z,'p')
