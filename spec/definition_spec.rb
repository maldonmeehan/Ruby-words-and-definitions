require('rspec')
require('definition')

describe('definition') do

end

  describe("#definition") do
    it("lets the user add a definition") do
      test_definition = Definition.new("A Hash is a dictionary-like collection of unique keys and their values.")
      expect(test_definition.description()).to(eq("A Hash is a dictionary-like collection of unique keys and their values."))
    end
  end

  describe("#definition2") do
    it("lets the user add a second definition") do
      test_definition = Definition.new("Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.")
      expect(test_definition.description2()).to(eq("Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type."))
    end
  end
