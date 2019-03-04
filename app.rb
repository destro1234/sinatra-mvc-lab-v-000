require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinizer = PigLatinizer.new
    @piglatinizedtext = piglatinizer.piglatinize(params[:user_phrase])
    @piglatinizedtext = piglatinizer.piglatinize(params[:user_phrase])

    erb :pig_latinize
  end
end
