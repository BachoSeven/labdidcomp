k=500;

X=sparse(100,100);
X(8,16:17)=1;
X(9,15)=1;
X(9,17)=1;
X(10:11,5:6)=1;
X(10,14:16)=1;
X(11,13:15)=1;
X(13,15)=1;
X(13,17)=1;
X(12,14:16)=1;
X(14,16:17)=1;

X(8,24)=1;
X(9,22:23)=1;
X(10,21:23)=1;
X(11,20)=1;
X(11,23:24)=1;
X(12,21:22)=1;
X(8:10,25)=1;
X(8:10,29)=1;
X(7,26)=1;
X(7,28)=1;
X(6,27)=1;
X(11,26)=1;
X(11,28)=1;
X(12,27)=1;
X(8:9,39:40)=1;

tgol(k,X,100)