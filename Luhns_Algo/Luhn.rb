class Luhn

  def initialize

  end

  # returns true if number is valid Luhn's number
  # otherwise false
  def is_valid?(number)

    checksum = 0

    # break number into an array of digits
    digits = digits_of(number)

    i = 0
    # start from the right most number in the array
    digits.reverse.each do |digit|
      i += 1
      if i % 2 == 0
        checksum += sum_array(digits_of(digit*2))
      else
        checksum += digit
      end
    end

    return checksum % 10 == 0
  end

  # returns an array of digits
  # for a given number
  def digits_of(number)
    number.to_s.split('').map { |d| d.to_i}
  end

  # returns sum of numbers in an
  # array
  def sum_array(arr)
    arr.reduce(:+)
  end

end
