# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/cities' do
	@students = db.execute("SELECT * FROM students")
	erb :cities
end

get '/update_cities' do
	erb :update_cities
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/update' do
	db.execute("UPDATE students SET campus = (?) WHERE id =(?)", [params['campus'], params['id']])
	redirect'/cities'
end

# add static resources

