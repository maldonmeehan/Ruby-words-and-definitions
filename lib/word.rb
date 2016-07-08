class Word
  @@all_words = []

  define_method(:initialize) do |list|
    @list = list
  end

  define_method(:list) do
    @list
  end

  define_singleton_method(:all) do
    @@all_words
  end

end
