require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/word")

get("/") do
  @words = Word.all()
  erb(:index)
end

get('/new_word_form') do
  erb(:new_word_form)
end

post("/confirmation") do
  list = params.fetch("word")
  word = Word.new(list)
  word.save()
  erb(:confirmation)
end
