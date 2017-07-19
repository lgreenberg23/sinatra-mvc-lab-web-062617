require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
  		erb :user_input
	end


	post '/piglatinize' do
		@phrase = params[:user_phrase]
		
		pig_latinize = PigLatinizer.new
		@new_phrase = pig_latinize.to_pig_latin(@phrase)
		erb :user_input
	end


end