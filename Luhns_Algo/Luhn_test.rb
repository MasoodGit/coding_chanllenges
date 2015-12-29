require 'minitest/autorun'
require_relative 'Luhn'

class TestLuhn < MiniTest::Unit::TestCase

  def test_luhn_valid
    assert Luhn.new.is_valid?(4194560385008504)
  end

  def test_luhn_invalid
    assert ! Luhn.new.is_valid?(4194560385008505)
  end

  def test_luhn_valid2
    assert Luhn.new.is_valid?(377681478627336), "Check step two: Did you start at the right?"
  end

  def test_luhn_invalid2
    assert ! Luhn.new.is_valid?(377681478627337), "Check step two: Did you start at the right?"
  end

end
