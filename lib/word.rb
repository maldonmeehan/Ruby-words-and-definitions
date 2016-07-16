class Word

  @@all_words = []

  attr_reader(:name, :definition_entries, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @definition_entries = []
    @id = @@all_words.length + 1
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_singleton_method(:find) do |id_num|
    found_word = nil
    @@all_words.each() do |word|
      if word.id().==(id_num.to_i())
        found_word = word
      end
    end
    found_word
  end

  define_method(:add_definition) do |definition|
    @definition_entries.push(definition)
  end

end
