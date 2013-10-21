get '/' do
  @people = People.all
  erb :index
end

get '/people/new' do
  erb :people_new
end

post '/people' do
  @new_person = People.create(params[:people])
  redirect '/'
end

get '/people/:id' do
  @person = People.find(params[:id])
  erb :people_show
end
