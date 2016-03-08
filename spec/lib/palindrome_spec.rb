require './lib/palindrome'

describe Palindrome do
  describe '.palindrome?(string)' do
    it 'returns true for an empty string' do
      expect(Palindrome.palindrome?('')).to be_truthy
    end

    it 'returns true for a one character string' do
      expect(Palindrome.palindrome?('a')).to be_truthy
      expect(Palindrome.palindrome?('A')).to be_truthy
      expect(Palindrome.palindrome?('5')).to be_truthy
    end

    context 'for two character strings' do
      it 'returns true if the characters match' do
        expect(Palindrome.palindrome?('aa')).to be_truthy
        expect(Palindrome.palindrome?('AA')).to be_truthy
        expect(Palindrome.palindrome?('55')).to be_truthy
      end
      it 'returns false if the characters do not match' do
        expect(Palindrome.palindrome?('ab')).to be_falsey
        expect(Palindrome.palindrome?('AB')).to be_falsey
        expect(Palindrome.palindrome?('56')).to be_falsey
      end
    end

    context 'for three character strings' do
      it 'returns true if the first and last characters match' do
        expect(Palindrome.palindrome?('aba')).to be_truthy
        expect(Palindrome.palindrome?('ABA')).to be_truthy
        expect(Palindrome.palindrome?('565')).to be_truthy
      end
      it 'returns false if the first and last characters do not match' do
        expect(Palindrome.palindrome?('abc')).to be_falsey
        expect(Palindrome.palindrome?('ABC')).to be_falsey
        expect(Palindrome.palindrome?('567')).to be_falsey
      end
    end

    context 'for four character strings' do
      context 'when the first and last character match' do
        it 'returns true if the first and last characters match' do
          expect(Palindrome.palindrome?('abba')).to be_truthy
          expect(Palindrome.palindrome?('ABBA')).to be_truthy
          expect(Palindrome.palindrome?('5665')).to be_truthy
        end
        it 'returns false if the inside chars do not match' do
          expect(Palindrome.palindrome?('abca')).to be_falsey
          expect(Palindrome.palindrome?('ABCA')).to be_falsey
          expect(Palindrome.palindrome?('5675')).to be_falsey
        end
      end
      it 'returns false if the first and last characters do not match' do
        expect(Palindrome.palindrome?('abbc')).to be_falsey
        expect(Palindrome.palindrome?('ABBC')).to be_falsey
        expect(Palindrome.palindrome?('5667')).to be_falsey
      end
    end
  end
end
