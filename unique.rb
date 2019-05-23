array = [1,2,3,2,1,6,9]
new_array = []

def unique (arg)
	if !new_array.include?(arg)
		new_array << arg
end

array.each do |argument|
	unique(argument)
end

puts "[#{new_array}]"