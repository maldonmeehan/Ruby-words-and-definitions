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
