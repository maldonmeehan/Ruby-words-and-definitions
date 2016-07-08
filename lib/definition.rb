class Definition
  @@all_definitions = []

  define_method(:initialize) do |description1, description2|
    @description1 = description1
    @description2 = description2
  end

  define_method(:description1) do
    @description1
  end

  define_method(:description2) do
    @description2
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
