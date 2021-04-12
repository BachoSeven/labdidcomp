p1=[1 0 0 0 -1];
i=[1 -1];
p2=conv(conv(i,i),conv(i,i));
t=.02;

perturbed_poly(p1,t)
pause(2)

figure(2)
perturbed_poly(p2,t)
pause(2)

v=linspace(0,1.5,100);
hold on
figure(2)
plot(v,polyval(p1,v))
plot(v,polyval(p2,v))
pause
