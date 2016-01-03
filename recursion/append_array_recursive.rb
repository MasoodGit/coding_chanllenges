def append(arr,num)
  return arr << num if num <= 0
  arr << num
  append(arr,num - 1)
end

#append [], 2 # => [2,1,0]
appended_arr = append [],3
puts appended_arr.inspect
