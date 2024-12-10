require 'polinatswet_palindrome/version'

module PtswetPalindrome

  # returns true for a palindrome ,false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # returns content for palindrome testing
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase # учитывает цифры и буквы
    end
end

class String
  include PtswetPalindrome
end

class Integer
  include PtswetPalindrome # Подключить модуль палиндромов для целых чисел
end
