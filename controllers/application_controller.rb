class ApplicationController < Sinatra::Base

	require 'bundler' #requiring the bundler gem
	Bundler.require #Bundler.require()

	set :view, File.dirname(__FILE__) + '/views'
	set :public_folder, File.dirname(__FILE__) + '/public'


	#talk to our database - our db.js
	ActiveRecord::Base.establish_connection(
		:adapter =>'mysql2',
		:database =>'superstars'
		)
	
	#enabling sessions
	enable :sessions, :logging 

	not_found do 
		{:message =>"not found"}.to_json
	end
	
	get '/' do
		{:message => "home page"}.to_json
	end	
end

