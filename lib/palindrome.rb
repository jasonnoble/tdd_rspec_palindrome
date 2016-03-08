class Palindrome
  def self.palindrome?(string)
    # return true if string.length < 2
    # chars = string.chars
    # chars.shift == chars.pop &&
    #   Palindrome.palindrome?(chars.join)
    string == string.reverse
  end
end
