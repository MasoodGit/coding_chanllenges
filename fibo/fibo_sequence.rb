require 'benchmark'

def recursive_fib(num)
  if num <= 1
    return num
  end
  recursive_fib(num-1) + recursive_fib(num-2)
end

def iterative_fib(num)
  if num <= 1
    return num
  end
  i = 2
  num1 = 0
  num2 = 1
  while i <= num
    temp = num1 + num2
    num1 = num2
    num2 = temp
    i += 1
  end
  return num2
end

num = 37

Benchmark.bm do |x|
  x.report("recurvise fibo") { recursive_fib(num) }
  x.report("iterative_fib fibo") { iterative_fib(num) }
end
