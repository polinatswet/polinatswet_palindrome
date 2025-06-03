require "test_helper"

class TestPolinatswetPalindrome < Minitest::Test
  def test_non_palindrome # negative case
    assert ! "apple".palindrome?
    #refute ! "apple".palindrome?
  end

  def test_literal_palindrome # positive case
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_non_palindrome
    assert !12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

  def test_string_of_2_spaces_is_not_a_palindrome
    assert !"  ".palindrome? # отрицание
  end

  def test_string_of_5_spaces_is_not_a_palindrome
    assert !(" " * 5).palindrome?
  end
end
