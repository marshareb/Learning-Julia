function add_pers(x, y=1)
	sum = 0
	for i in 1:length(string(x))
		sum += Int(floor(x/10^(i-1) % 10))
	end
	if length(string(sum)) > 1
		add_pers(sum, y+1)
	else
		y
	end
end

map(add_pers, [13, 1234, 9876, 199])
