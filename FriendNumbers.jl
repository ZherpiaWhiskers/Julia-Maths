num_1 = 284
num_2 = 220

function getDividers(n::Int)
	dividersFolder = Int[]
	for i in 1:(n-1)
		if n % i == 0
			push!(dividersFolder, i)
		end
	end
	return dividersFolder
end

function extrcatNumbers(a1::Array)
	sum1 = 0
	for i in a1
		sum1 += i
	end
	return sum1
end

function friendNumbers(n1::Int, n2::Int)
	numbers1 = getDividers(n1)
	numbers2 = getDividers(n2)
	
	println("Divisores de $num_1:")

	for i in numbers1
		println(string(i))
	end

	println("Divisores de $num_2:")

	for i in numbers2
		println(string(i))
	end

	final1 = extrcatNumbers(numbers1)
	final2 = extrcatNumbers(numbers2)

	if final1 == n2 && final2 == n1
		println("$n1 y $n2 son numberos amistosos! Numero uno: $final1 Numero 2: $final2")
	end

end

friendNumbers(num_1, num_2)
