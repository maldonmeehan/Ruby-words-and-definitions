class Definition
  @@all_definitions = []

  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@all_definitions.length().+(1)
  end

  define_method(:definition) do
    @definition
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

  define_method(:save) do
    @@all_definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@all_definitions = []
  end
end
