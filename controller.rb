require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/student.rb')
require_relative( './models/house.rb')

also_reload('./models/*')

get '/hogwarts' do
  @studentlist = Student.list_all()
  erb(:list_students)
end

get '/hogwarts/find-student/:id' do
  @student = Student.find_by_id(params[:id])
  erb(:find_student)
end

get '/hogwarts/find-house/:id' do
  @house = House.find_by_id(params[:id])
  erb(:find_house)
end

get '/hogwarts/houses' do
  @houselist = House.list_all()
  erb(:list_houses)
end

get '/hogwarts/new' do
  erb(:new)
end

post '/hogwarts' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end
