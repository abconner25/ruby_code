require 'benchmark'

def recursive_fib(num)
    if (num==0)
        return 0;
    elsif (num==1)
        return 1;
    else
        return recursive_fib(num-1)+recursive_fib(num-2)
    end
end

def iterative_fib(num)
    if (num==0)
        return 0;
    elsif (num==1)
        return 1;
    else
        curr = 1
        prev = 1
        count = 2
        while (count < num)
            temp = curr
            curr = curr + prev
            prev = temp
            count = count + 1
        end
    end
    return curr
end

num = 35

Benchmark.bm do |x|
    x.report("recursive_fib") {recursive_fib(num)}
    x.report("iterative_fib") {iterative_fib(num)}
end