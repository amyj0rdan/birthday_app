require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  configure(:development) { set :session_secret, "secret birthdays" }

  get '/' do
    erb :index
  end

  post '/details' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/countdown'
  end

  get '/countdown' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    today = Time.now
    birthday = Time.new(2019,@month,@day)

    @countdown = (birthday - today)/(60*60*24)

    if @countdown < 0
      @countdown += 365
    end

    erb :countdown
  end

  run! if app_file == $0

end
