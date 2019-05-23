def ordinal(number)

	#sufix is dependant only on the right most digit
	remainder = number%10

	#if the last digit is 4-9, 0 or the number is 11,12,13
	if (remainder>=4 || ((number%100)-remainder)==10 || remainder==0)
		puts "#{number}th"
	elsif remainder==1
		puts "#{number}st"

	elsif remainder==2
		puts "#{number}nd"

	elsif remainder==3
		puts "#{number}rd"
	end
end

puts "Enter a number: "
num = (gets.chomp()).to_i

ordinal(num)
