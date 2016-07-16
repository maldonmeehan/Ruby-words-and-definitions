class Definition

  attr_reader(:definition_one, :id)

  @@all_definitions = []

  define_method(:initialize) do |attributes|
    @definition_one = attributes.fetch(:definition_one)
    @id = @@all_definitions.length().+(1)
  end

  define_method(:save) do
    @@all_definitions.push(self)
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

  define_singleton_method(:clear) do
    @@all_definitions = []
  end

end
