class Palindrome
  def self.palindrome?(string)
    string = string.downcase.gsub(/[^\w\d]/, '')
    return true if string.length <= 1
    letters = string.split('')
    first_letter = letters.shift
    last_letter = letters.pop
    if first_letter == last_letter
      palindrome?(letters.join)
    else
      false
    end
  end
end
