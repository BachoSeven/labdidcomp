f=@(x) exp(x);
N=100:100:10000;
for i=100:100:10000
	Y(i/100)=abs((e-1)-trapezi(f,0,1,i));
end
ly=log(Y);
ln=log(N);
p=polyfit(ln,ly,1);
p(1)
## Viene l'errore proporzionalmnte ad 1/N^2, ok
