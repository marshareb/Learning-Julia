
# Generate possible combinations
combn = map(string, 0:9)
comba = split("ABCDEF", "")
comb = vcat(combn, comba)

function numtocom(x)
	return string(comb[Int(floor(x/16+1))], comb[x % 16 + 1])
end

function convert_to_hex(x)
	return "#" * numtocom(x[1]) * numtocom(x[2]) * numtocom(x[3])
end

examples = [[255,99,71], [184,134,11], [189,183,107], [0,0,205]]
println(map(convert_to_hex, examples))

# BONUS
function comtonum(x)
	return 16*(findfirst(y -> y == string(x[1]), comb)- 1) +  (findfirst(y -> y == string(x[2]), comb)-1) 
end

function convert_to_rgb(x)
	return [comtonum(x[2:3]), comtonum(x[4:5]), comtonum(x[6:7])]
end

function blend(x)
	return convert_to_hex(map(Int, map(round, sum(map(convert_to_rgb, x))/length(x))))
end

bonus_examples = [["#000000", "#778899"], ["#E6E6FA", "#FF69B4", "#B0C4DE"]]
println(map(blend, bonus_examples))
