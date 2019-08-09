def collatz(num, count)
    #print num
    if (num == 1)
        return count
    elsif ((num % 2) == 0)
        num = num/2
    else
        num = 3*num + 1
    end
    count = count + 1
    #print "-> "
    collatz(num, count)
end

i = 1
max = 0
max_index = 0
while (i <= 1000000)
    temp = collatz(i,0)
    if (max < temp)
        max_index = i
        max = temp
    end
    i = i + 1
end
puts "max_index: #{max_index}"
puts "max: #{max}"
