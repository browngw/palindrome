# frozen_string_literal: true

require "test_helper"

class TestBrowngwPalindrome < Minitest::Test

  def test_non_palindrome
    assert !"apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "Racecar".palindrome?
  end
  
  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam".palindrome?
  end

  def test_integer_non_palindrome
    assert !12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

  def test_empty_non_palindrome
    assert !"".palindrome?
  end

  def test_multiple_spaces_non_palindrome
    assert !"   ".palindrome?
  end

  # def test_letters
  #   assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  # end

  # def test_that_it_has_a_version_number
  #   refute_nil ::BrowngwPalindrome::VERSION
  # end

  # def test_it_does_something_useful
  #   assert true
  # end

end
