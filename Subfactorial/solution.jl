# THE MORE CONSTRUCTIVE WAY

function flatten(n)
	return [j for i in n for j in i]
end

function combinations(n, l=0, rslt=[])
	if l == 0
		rslt = [i for i in n]
		return combinations(n, 1, rslt)
	elseif l != length(n)
		rslt2 = []
		for i in rslt
			for j in n
				if !(j in i)
					append!(rslt2, [flatten([i,j])])
					append!(rslt2, [flatten([j,i])])
				end
			end
		end
		return combinations(n, l+=1, unique(rslt2))
	else
		return rslt
	end
end

function derangement(n)
	for i in collect(1:length(n))
		if n[i] == i
			return false
		end
	end
	return true
end

function subfactorial(n)
	return length(filter(derangement, combinations(collect(1:n))))
end

# THE MORE MATHEMATICAL WAY

derangements = n -> if n ==0 return 1 else return derangements(n-1) * n + (-1)^n end

