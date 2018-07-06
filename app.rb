require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require('./lib/words')
require('pry')

get('/') do
  @list = Word.all()
  erb(:input)
end

post('/') do
  word = params["word"]
  definition = params["definition"]
  item = Word.new(word, definition)
  item.save()
  @list = Word.all()
  erb(:input)
end

get ('/items/:id') do
  @item = Word.find(params[:id])
  erb(:output)
end
