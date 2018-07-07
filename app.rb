require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require('./lib/words')
require('pry')

get('/') do
  @list_word = Word.all()
  erb(:input)
end

post('/') do
  word = params["word"]
  definition = params["definition"]
  item = Word.new(:word => word)
  item.def_array.push(definition)
  item.save()
  @list_word = Word.all()
  erb(:input)
end

get ('/items/:id') do
  @item = Word.find(params[:id])
  erb(:output)
end

post('/items/:id') do
  @item = Word.find(params[:id])
  @item = Word.find(params.fetch("add_button"))
  definition = params.fetch("definition_add")
  @item.save_def(definition)
  erb(:output)
end

get('/back') do
  @list_word = Word.all()
  erb(:input)
end
