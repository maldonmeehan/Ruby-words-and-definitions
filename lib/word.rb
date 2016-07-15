class Word
  @@all_words = []

  define_method(:initialize) do |name|
    @name = name
    @entries = []
    @id = @@all_words.length().+(1)
  end

  define_method(:name) do
    @name
  end

  define_method(:entries) do
    @entries
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_method(:push_definition) do |definition|
    @entries.push(definition)
  end


end
