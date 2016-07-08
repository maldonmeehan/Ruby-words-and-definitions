require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/word")

get('/') do
  @words = Word.all()
  erb(:index)
end

post("/confirmation") do
  list = params.fetch("word")
  word = Word.new(list)
  word.save()
  erb(:confirmation)
end

get('/definition') do
  @definitions = Definition.all()
  erb(:definition)
end
