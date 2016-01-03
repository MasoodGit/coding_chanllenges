def sum_up_to(num)
  return 1 if num == 1
  sum_up_to(num -1) + num
end

puts sum_up_to(4)
puts sum_up_to(100)
