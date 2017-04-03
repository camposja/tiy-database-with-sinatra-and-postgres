require 'sinatra'
require 'pg'
require 'ap'

require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

get '/addpeep' do
  addemployee_db = PG.connect(dbname: "tiy-database")

  erb :addpeep
end

get '/employees' do
  database = PG.connect(dbname:"tiy-database")

  @employees = database.exec("select * from employees")

  erb :employees
end
