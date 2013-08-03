require './lib/palindrome'

describe Palindrome do
  describe "#palindrome?" do
    it "is true for empty string" do
      expect(Palindrome.palindrome?('')).to be_true
    end

    it "is true for single character string" do
      expect(Palindrome.palindrome?('a')).to be_true
      expect(Palindrome.palindrome?('A')).to be_true
      expect(Palindrome.palindrome?('5')).to be_true
    end

    it "is true for strings with only special characters" do
      expect(Palindrome.palindrome?(%q{,.!?;:'"-})).to be_true
    end

    it "is true for strings with only white space" do
      expect(Palindrome.palindrome?(%q{       })).to be_true
    end

    describe "for numbers" do
      it "is true for one number" do
        expect(Palindrome.palindrome?(1)).to be_true
      end
    end

    describe "for two letter strings" do
      it "is true if the characters are the same" do
        expect(Palindrome.palindrome?('aa')).to be_true
        expect(Palindrome.palindrome?('AA')).to be_true
        expect(Palindrome.palindrome?('Aa')).to be_true
        expect(Palindrome.palindrome?('55')).to be_true
      end

      it "is false if the characters are not the same" do
        expect(Palindrome.palindrome?('ab')).to be_false
        expect(Palindrome.palindrome?('56')).to be_false
      end
    end

    describe "for three letter strings" do
      it "is true if the first and last character match" do
        expect(Palindrome.palindrome?('aba')).to be_true
        expect(Palindrome.palindrome?('565')).to be_true
      end

      it "is false if the first and last character do not match" do
        expect(Palindrome.palindrome?('abc')).to be_false
        expect(Palindrome.palindrome?('557')).to be_false
      end
    end

    describe "for four letter strings" do
      describe "if the first and last character match" do
        it "is true if the inner characters match" do
          expect(Palindrome.palindrome?('abba')).to be_true
          expect(Palindrome.palindrome?('5665')).to be_true
        end

        it "is false if the inner characters do not match" do
          expect(Palindrome.palindrome?('abca')).to be_false
          expect(Palindrome.palindrome?('5675')).to be_false
        end
      end
    end

    describe "common palindromes" do
      it "is true for dad" do
        expect(Palindrome.palindrome?('dad')).to be_true
      end

      it "is true for radar" do
        expect(Palindrome.palindrome?('radar')).to be_true
      end

      it "is true for racecar" do
        expect(Palindrome.palindrome?('racecar')).to be_true
      end

      it "is true for deed" do
        expect(Palindrome.palindrome?('deed')).to be_true
      end

      it "is true for A man, a plan, a canal, Panama!" do
        expect(
            Palindrome.palindrome?(
                   'A man, a plan, a canal, Panama!'
            )
        ).to be_true
      end

      it "is true for $110,110.11" do
        expect(Palindrome.palindrome?('$110,110.11')).to be_true
      end

      it "is true for 110_110.11" do
        expect(Palindrome.palindrome?(110_110.11)).to be_true
      end

      it "is true for line\n\t\tenil" do
        expect(Palindrome.palindrome?("line\n\t\tenil")).to be_true
      end
    end
  end
end
