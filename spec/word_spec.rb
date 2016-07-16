require('rspec')
require('word')
require('definition')

describe('Word') do
  before() do
    Word.clear
  end

  describe("Word#initialize") do
    it("lets the user add a word") do
      new_word = Word.new({name: "Hash"})
      expect(new_word.name()).to(eq("Hash"))
    end
  end

  describe('#save') do
    it('adds a word to the array of saved words') do
      new_word = Word.new({:name => 'Hash'})
      expect(new_word.save()).to(eq([new_word]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved words') do
      new_word = Word.new({:name => 'Hash'})
      new_word.save()
      expect(Word.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns an array of all saved words') do
      new_word = Word.new({:name => 'Hash'})
      new_word.save()
      expect(Word.all()).to(eq([new_word]))
    end
  end

  describe('#id') do
    it('returns a unique id for a word') do
      new_word_one = Word.new({:name => 'Hash'})
      new_word_one.save()
      new_word_two = Word.new({:name => 'Object'})
      new_word_two.save()
      expect(new_word_two.id()).to(eq(2))
    end
  end

  describe("Word#definitions") do
    it("returns a word object with more than one definition") do
      new_word = Word.new({name: "Hash"})
      new_word.save()
      new_definition_entry_one = Definition.new({definition_one: "A Hash is a dictionary-like collection of unique keys and their values."})
      new_definition_entry_two = Definition.new({definition_one: "It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index."})
      new_word.add_definition(new_definition_entry_one)
      new_word.add_definition(new_definition_entry_two)
      expect(new_word.definition_entries()).to(eq([new_definition_entry_one, new_definition_entry_two]))
    end
  end

end
