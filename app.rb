require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do
    erb :piglatinize
  end

  post '/piglatinize' do
    pig_instance = PigLatinizer.new
    @result = pig_instance.piglatinize(params[:user_phrase])
    # redirect '/piglatinize'
  end



end
