# Definizioni
	S=[0.5 0 0;0 0.5 0;0.5 0 0.5;0 0.5 0;0.5 0 0.25; 0 0.5 0.5];
	x=1/3*sin(pi/3);
	s=1/6;
	t=1/3;
	t2=2/3;
	# Koch ;)
	K=[t 0 0; 0 t 0;s -x t;x s 0;s x 0.5;-x s x;t 0 t2;0 t 0];

# Plot dei frattali
	axis equal
	fract(S,100000);
	figure(2)
	fract(K,100000);
