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

get '/addpeep' do
  addemployee_db = PG.connect(dbname: "tiy-database")

  erb :addpeep
end

get '/database' do
  database = PG.connect(dbname:"tiy-database")

  id = params["id"]

  @employees = database.exec("select * from employees where id = $1", [id])
  erb :database
end
