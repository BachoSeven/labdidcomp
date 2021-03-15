function u=collatz_count(m)
	for i=1:m
		u(i)=size(coll(i),2);
	end
end
