require 'sinatra'

get '/' do
    "Hello, World!"
end

get '/secret' do
    "Some kind of a secret"
end

get '/pair' do
    "pairng is fun"
end

get '/random-cat' do
  @name = ["Amigo", "Harry", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
    erb(:cat_form)
end

post '/named-cat' do
    p params
    name = params[:cat]
    erb(:index)
end

set :session_secret, "super_secret"