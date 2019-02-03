# Checks diagonal
function distance(i,j,x)
	if abs(i-j) == abs(x[i]-x[j])
		return true
	else
		return false
	end
end

function validator(x)
	# Checks if same row
	for i in unique(x)
		if length(x[x.==i]) > 1
			return false
		end	
	end
	# Checks if diagonal same
	for i in 1:length(x)
		for j in (i+1):length(x)
			if distance(i,j,x)
				return false
			end
		end
	end
	return true
end
	
examples = [[4, 2, 7, 3, 6, 8, 5, 1], [2, 5, 7, 4, 1, 8, 6, 3], [5, 3, 1, 4, 2, 8, 6, 3], [5, 8, 2, 4, 7, 1, 3, 6], [4, 3, 1, 8, 1, 3, 5, 2]]
println(map(validator, examples))

