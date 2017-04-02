require 'sinatra'
require 'pg'
require 'ap'

require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

get '/database' do
  database = PG.connect(dbname: "tiy-database")

  erb :database
end

get '/bruno' do
  "yesy"
end
