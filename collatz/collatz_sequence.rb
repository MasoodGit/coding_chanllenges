def collatz_sequence(num)
  items = []
  items << num
  while num > 1
    if num.even?
      num = ( num / 2 )
      items << num
    else
      num = ( 3 * num + 1 )
      items << num
    end
  end
  puts items.inspect
  puts "sequence length : #{items.length}"
end

puts collatz_sequence(4)
puts collatz_sequence(7)
puts collatz_sequence(20)
