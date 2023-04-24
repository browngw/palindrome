# frozen_string_literal: true

# require_relative "browngw_palindrome/version"
require "browngw_palindrome/version"

module BrowngwPalindrome

  # Returns true for palindrome, false otherwise
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string
  def letters
    self.chars.select { |c| c.match(/[a-z]/i) }.join
  end

  private

    # Returns content for palindrome testing
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end

end

class String
  include BrowngwPalindrome
end

class Integer
  include BrowngwPalindrome
end
