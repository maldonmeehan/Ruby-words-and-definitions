require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

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

post('/') do
  erb(:index)
end

get('/new_word_form') do
  erb(:new_word_form)
end

post('/new_word_form') do
  list = params.fetch("word")
  word = Word.new(list)
  word.save()
  erb(:new_word_form)
end
