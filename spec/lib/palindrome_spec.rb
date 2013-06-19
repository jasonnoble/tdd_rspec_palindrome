require './lib/palindrome'

describe Palindrome do
  describe "#palindrome?(string)" do
    it "returns true for empty string" do
      Palindrome.palindrome?('').should be_true
    end

    it "returns false for 'palindrome'" do
      Palindrome.palindrome?('palindrome').
          should be_false
    end

    it "returns true for 'a'" do
      Palindrome.palindrome?('a').
        should be_true
    end

    it "returns true for 'aa'" do
      Palindrome.palindrome?('aa').
        should be_true
    end

    it "returns true for 'aaa'" do
      Palindrome.palindrome?('aaa').
        should be_true
    end

    it "returns true for 'abca'" do
      Palindrome.palindrome?('abca').
        should be_false
    end

    it "returns true for 'racecar'" do
      Palindrome.palindrome?('racecar').
          should be_true
    end

    it "returns true for 'A man, a plan, a canal, PANAMA!!!'" do
      Palindrome.palindrome?('A man, a plan, a canal, PANAMA!!!').
          should be_true
    end

    it "returns true for '10022001'" do
      Palindrome.palindrome?('10022001').
          should be_true
    end


    it "returns true for '10023001'" do
      Palindrome.palindrome?('10023001').
          should be_false
    end
  end
end
