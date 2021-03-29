# Definizioni
x=[1; 1];
A1=[0.85 0.04; -0.04 0.85];
b1=[0 ;1.6];
A2=[0.20 -0.26; 0.23 0.22];
b2=[0 ;1.6];
A3=[-0.15 0.28; 0.26 0.24];
b3=[0 ;0.44];
A4=[0 0;0 0.16];
b4=[0;0];

S1(:,1)=x;
S2(:,1)=x;
S3(:,1)=x;
S4(:,1)=x;
for i=2:50
	S1(:,i)=A1*(S1(:,i-1))+b1;
	S2(:,i)=A2*(S2(:,i-1))+b2;
	S3(:,i)=A3*(S3(:,i-1))+b3;
	S4(:,i)=A4*(S4(:,i-1))+b4;
end

hold on
plot(S1(1,:),S1(2,:),'g.')
plot(S2(1,:),S2(2,:),'r.')
plot(S3(1,:),S3(2,:),'b.')
plot(S4(1,:),S4(2,:),'p.')