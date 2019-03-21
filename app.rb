require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  configure(:development) { set :session_secret, "secret birthdays" }

  get '/' do
    erb :index
  end

  run! if app_file == $0
  
end
