require('rspec')
require('definition')

describe('Definition') do

  before() do
    Definition.clear()
  end

  after() do
    Definition.clear()
  end

  describe('Definition#initialize') do
    it("lets the user add a definition") do
      new_ruby_definition_one = Definition.new({definition_one: "A Hash is a dictionary-like collection of unique keys and their values."})
      expect(new_ruby_definition_one.definition_one()).to(eq("A Hash is a dictionary-like collection of unique keys and their values."))
    end
  end

  describe('.all') do
    it('is empty a first') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a definition to the array of saved definitions') do
      new_definition = Definition.new({:definition_one => 'A Hash is a dictionary-like collection of unique keys and their values.'})
      expect(new_definition.save()).to(eq([new_definition]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved definitions') do
      new_definition = Definition.new({:definition_one => 'A Hash is a dictionary-like collection of unique keys and their values.'})
      new_definition.save()
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns a unique id for each new definition') do
      new_definition_one = Definition.new({:definition_one => 'A Hash is a dictionary-like collection of unique keys and their values.'})
      new_definition_one.save()
      new_definition_two = Definition.new({:definition_one => 'It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index.'})
      new_definition_two.save()
      expect(new_definition_two.id()).to(eq(2))
    end
  end

end
