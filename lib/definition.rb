class Definition
  @@definitions = []

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
end
