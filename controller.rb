require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/student.rb')
also_reload('./models/*')

get '/studentlist' do
  @studentlist = Student.list_all()
  erb(:list_students)
end
