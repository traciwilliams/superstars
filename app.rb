class ApplicationController < Sinatra::Base

	require 'bundler' #requiring the bundler gem
	Bundler.require #Bundler.require()

	set :view, File.dirname(__FILE__) + '/views'
	set :public_folder, File.dirname(__FILE__) + '/public'




#connect to our database
enable :sessions, :logging #enabling sessions
end