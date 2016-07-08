require('rspec')
require('word')

describe('Word') do

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

    describe("#save") do
      it("adds a word to the array of saved words") do
        test_word = Word.new("Object")
        test_word.save()
        expect(Word.all()).to(eq([test_word]))
      end
    end

    describe(".clear") do
      it("empties out all of the saved words") do
        Word.new("Hash").save()
        Word.clear()
        expect(Word.all()).to(eq([]))
      end
    end
