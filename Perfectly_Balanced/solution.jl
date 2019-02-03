function perfectly_balanced(x::String)
	if x == ""
		return true
	end
	G = Dict()
	for i in 1:length(x)
		if haskey(G, x[i])
			G[x[i]] += 1
		else
			G[x[i]] = 1
		end
	end	
	if all(collect(values(G)) .== G[x[1]])
		return true
	else
		return false
	end
end

examples = ["xxxyyyzzz", "abccbaabccba", "xxxyyyzzzz", "abcdefghijklmnopqrstuvwxyz", "pqq", "fdedfdeffeddefeeeefddf", "www", "x", ""]
println(map(perfectly_balanced, examples))
