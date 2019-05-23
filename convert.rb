def lb_to_kg(mass) 

	return mass*0.4535
end

puts "Enter weight in kg: "
weight = gets.chomp;
weight = lb_to_kg(weight.to_f)
puts "#{weight} kilograms"