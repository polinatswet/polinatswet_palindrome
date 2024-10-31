# frozen_string_literal: true
# putting the palindrome detector in the gem

require "polinatswet_palindrome/version"

#module PolinatswetPalindrome
  
  class String

  #  returns true for a palindrome ,false otherwise.
    def palindrome?
      processed_content == processed_content.reverse
    end

    # возвращает буквы в строке
    def letters
    end

    private

  # return content for palindrome testing
    def processed_content
      self.downcase
    end
  end
#end
