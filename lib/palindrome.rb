# Palindrome class
class Palindrome
  def self.palindrome?(string)
    if string.length == 2
      (first_letter, last_letter) = string.split('', 2)
      first_letter == last_letter
    else
      true
    end
  end
end
