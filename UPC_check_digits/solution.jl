function upc(x)
	M = Int(floor((sum(map(i -> floor(x/10^(11 - i) % 10), filter(y -> y % 2 == 0, collect(1:1:11)))) + 3 * (sum(map(i -> floor(x/10^(11 - i) % 10), filter(y -> y % 2 == 1, collect(1:1:11)))))) % 10))
	if M == 0 return M else return 10-M end
end

examples = [4210000526, 3600029145, 12345678910,1234567]
@time println(map(upc,examples))
