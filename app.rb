require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
	get '/' do
		erb :index
	end

	# Updated code:
	post '/' do
		@analyzed_text = TextAnalyzer.new(params[:user_text])

		erb :results
	end
	
	# Prior code:
	# post '/' do
	# 	text_from_user = params[:user_text]

	# 	erb :results
	# end


end
