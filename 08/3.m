f=@(x) exp(x);
% f=@(x) cos(x);
N=100:100:1000;
for i=100:100:1000
	Y(i/100)=abs((e-1)-simpson(f,0,1,i));
	% Y(i/100)=abs((sin(1)-(sin(0)))-simpson(f,0,1,i));
end
ly=log(Y);
ln=log(N);
p=polyfit(ln,ly,1);
p(1)

## Oss: con Simpson, l'errore decresce proporzionalmente a 1/N^4 sia con f=e^x che con f=cos(x).
