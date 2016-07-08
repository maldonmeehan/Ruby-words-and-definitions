require('rspec')
require('word')

describe('word') do

end

describe("#word") do
    it("returns a word to the user") do
      test_word = Word.new("Hash")
      expect(test_word.make()).to(eq("Hash"))
    end
  end
