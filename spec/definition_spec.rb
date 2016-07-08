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
