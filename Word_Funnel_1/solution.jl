function funnel(x::String,y::String)
	if any(map(z -> z == y, map(i -> x[1:(i-1)] * x[(i+1):end], collect(1:length(x))))) return true 
	else return false 
	end
end

examples = [["leave", "eave"], ["reset", "rest"], ["dragoon", "dragon"], ["eave","leave"], ["sleet", "lets"], ["skiff", "ski"]]
println(map(x -> funnel(x[1],x[2]), examples))

# OPTIONAL BONUS

f = open("../Word_Funnel_1/enable1.txt")
wordlist = readlines(f)
close(f)


function bonus(x::String)
	filter(y -> funnel(x,y), wordlist)
end

examples = ["dragoon", "boats", "affidavit"]
println(map(bonus, examples))

