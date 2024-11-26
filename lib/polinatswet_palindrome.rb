# frozen_string_literal: true
# putting the palindrome detector in the gem

require 'polinatswet_palindrome/version'

#module PolinatswetPalindrome
class String
#  returns true for a palindrome ,false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # возвращает буквы в строке
  def letters
    # создать массив символов, которые соответствуют заглавным или строчим буквам
    the_letters = []
    # итерация
    for i in 0..self.length-1
      if self[i].match(/[a-zA-Z]/)
        # pushing each character onto the array, if it matches the letter regex
        the_letters << self[i]
      end
    end
    # Сформировать строку букв в исходной строке
    the_letters.join
  end

  private

  # return content for palindrome testing
  def processed_content
    self.letters.downcase
  end
end
#end
