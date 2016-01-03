def reverse_append (arr,n)
  return arr if n < 0
  reverse_append(arr,n - 1)
  arr << n
end

puts (reverse_append [] , -1).inspect
puts (reverse_append [] , 0).inspect
puts (reverse_append [] , 1).inspect
puts (reverse_append [] , 4).inspect
#puts reverse.inspect
