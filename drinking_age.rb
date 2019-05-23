puts "What is your age?"
age = (gets.chomp()).to_i

if age < 21
	puts "You are not legally allowed to buy alcohol in the US"

else
	puts "You are legally allowed to buy alcohol in the US"
end
