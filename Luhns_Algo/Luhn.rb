class Luhn

  def initialize

  end

  def is_valid?(number)

    checksum = 0
    digits = digits_of(number)
    i = 0
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


  def digits_of(number)
    number.to_s.split('').map { |d| d.to_i}
  end

  def digits_at_odd_index(arr)
    sub_arr = []
    arr.each_with_index {|val,index|
      sub_arr << val if index % 2 != 0
    }
    return sub_arr
  end

  def digits_at_even_index(arr)
    sub_arr = []
    arr.each_with_index{ |val,index|
      sub_arr << val if index % 2 == 0
    }
    return sub_arr
  end

  def sum_array(arr)
    arr.reduce(:+)
  end


end
