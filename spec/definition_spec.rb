require('rspec')
require('definition')

describe('Definition') do

end

  describe("#description1") do
    it("lets the user add a definition") do
      test_definition = Definition.new("A Hash is a dictionary-like collection of unique keys and their values.", "Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.")
      expect(test_definition.description1()).to(eq("A Hash is a dictionary-like collection of unique keys and their values."))
    end
  end

  describe("#description2") do
    it("lets the user add a second definition") do
      test_definition = Definition.new("A Hash is a dictionary-like collection of unique keys and their values.", "Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.")
      expect(test_definition.description2()).to(eq("Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type."))
    end
  end

  describe(".all") do
    it("is empty a first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a definition to the array of saved definitions") do
      test_definition = Definition.new("A Hash is a dictionary-like collection of unique keys and their values.", "Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved definitions") do
      Definition.new("A Hash is a dictionary-like collection of unique keys and their values.", "Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.").save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end
