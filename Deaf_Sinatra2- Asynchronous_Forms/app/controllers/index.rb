get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  if params[:user_input] == "OKAY GRANDMA, I HAVE TO GO NOW!"
    "BYE SONNY!"
  elsif params[:user_input] != "" &&
        params[:user_input] == params[:user_input].upcase
    redirect to('http://localhost:9393/?grandma=NOT SINCE 1937!')
  else
    redirect to("http://localhost:9393/?grandma=SPEAK UP HONEY, I CAN'T HEAR YOU!")
  end
end
