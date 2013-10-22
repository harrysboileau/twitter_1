get '/' do
  # Look in app/views/index.erb
  erb :index
end



get '/tweets' do
  @username = params[:username]
  @recent_user_tweets = Twitter.user_timeline(@username)
  erb :view_tweets
end






post '/send_a_tweet' do
  @tweet_to_send = params[:tweet_to_send]
  @most_recent_tweet = Twitter.update("#{@tweet_to_send}")
  redirect to '/'
end































