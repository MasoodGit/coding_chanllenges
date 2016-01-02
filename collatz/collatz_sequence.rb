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
  #puts items.inspect
  #puts "sequence length : #{items.length}"
  return items.length
end

def longest_collatz_sequence
  limit = 1000000
  longestSequence = 0
  longestSequenceFor = 0
  i = 1
  while i <= limit
    sequenceLength = collatz_sequence(i)
    if sequenceLength > longestSequence
      longestSequence = sequenceLength
      longestSequenceFor = i
    end
    i += 1
  end
  puts "LongestSequence of #{longestSequence} found for #{longestSequenceFor}"
end

puts '====================================='
puts 'starting..............................'
longest_collatz_sequence()
puts '====================================='





#puts collatz_sequence(4)
#puts collatz_sequence(7)
#puts collatz_sequence(20)
#puts collatz_sequence(5600112)
