require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "What don't you understand about 'secret'?"
end

get '/edspage' do
  "WOOOHOOOOO! GREAT PAGE!"
end

get '/tajspage' do
  erb "Hi there, Visitor!"
  "I CAN'T QUITE BELIEVE HOW AMAZING THIS PAGE IS"
end

get '/about-us' do
  "<h1>Hello World</h1>"
end

get '/random-cat' do
  @name = ["tom", "charlie","jake"].sample
  erb(:index)
end

get '/named-cat'do
  p params
  @name = params[:name]
  erb(:index)
end

get '/whatsup' do
  "Whats up " + params[:name] + " " + params[:surname]
end

get '/pathurl/:name/:surname' do
  "Whats up " + params[:name] + " " + params[:surname]
end

get '/splat/*/to/*' do
  params[:splat][0] + ' ' + params[:splat][1] + '!'
end
