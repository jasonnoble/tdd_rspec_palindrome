require './lib/palindrome'

describe Palindrome do
  describe '.palindrome?(string)' do
    it 'returns true for an empty string' do
      expect(Palindrome.palindrome?('')).to be_truthy
    end

    it 'returns true for a one character string' do
      expect(Palindrome.palindrome?('a')).to be_truthy
      expect(Palindrome.palindrome?('A')).to be_truthy
      expect(Palindrome.palindrome?('9')).to be_truthy
    end

    context 'for two character strings' do
      it 'returns true if the characters match' do
        expect(Palindrome.palindrome?('aa')).to be_truthy
      end

      it 'returns false if the characters do not match' do
        expect(Palindrome.palindrome?('ab')).to be_falsey
      end
    end
  end
end
