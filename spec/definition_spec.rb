require('rspec')
require('definition')

describe('definition') do
  before() do
    Definition.clear()
  end

  after() do
    Definition.clear()
  end

  describe("#definition") do
    it("lets the user add a definition") do
      test_definition1 = Definition.new("A Hash is a dictionary-like collection of unique keys and their values.")
      expect(test_definition1.definition()).to(eq("A Hash is a dictionary-like collection of unique keys and their values."))
    end
  end

  describe(".all") do
    it("is empty a first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a definition to the array of saved definitions") do
      test_definition1 = Definition.new("A Hash is a dictionary-like collection of unique keys and their values.")
      test_definition1.save()
      expect(Definition.all()).to(eq([test_definition1]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved definitions") do
      Definition.new("A Hash is a dictionary-like collection of unique keys and their values.").save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

end
