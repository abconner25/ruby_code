def cel_to_fah(t)

	return t*(9/5) + 32
end

puts "Enter degrees in Celcius: "
temp = (gets.chomp).to_f
temp = cel_to_fah(temp)
puts "The temperature is #{temp} degrees Fahrenheit"
