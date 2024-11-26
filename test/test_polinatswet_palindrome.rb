# frozen_string_literal: true
# первоначальный (несгенерированный) тестовый набор.
require "test_helper"

class TestPolinatswetPalindrome < Minitest::Test
  # negative case
  def test_non_palindrome
    assert ! "apple".palindrome?
    #refute ! "apple".palindrome?
  end

  # positive case
  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  # Adding a test for the letters method. RED
  def test_letters
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end
end
