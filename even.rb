def is_even?(number)

	if (number%2 == 0)
		return true

	else
		return false	
	end

end

def is_even_and_divisible_by_five?(number)

	if(is_even(number) && (number%5 == 0))
		return true

	else
		return false
	end

end

puts "Enter number: "
val = gets.chomp()

puts "#{is_even_and_divisible_by_five(val)}"

