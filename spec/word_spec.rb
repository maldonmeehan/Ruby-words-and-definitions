require('rspec')
require('word')

describe('word') do

end

describe("#word") do
    it("lets the user add a word") do
      test_word = Word.new("Hash")
      expect(test_word.list()).to(eq("Hash"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end
