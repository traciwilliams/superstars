require 'sinatra/base'
#controllers
require './controllers/application_controller' #requires app.rb
require './controllers/superstar_controller'
#models
require './models/superstar'


map('/') {run ApplicationController}
map('/api/superstars') {run SuperstarController}

#before/after filter
before '/*' do
	puts "Route Log:"
	puts request.host
	puts params
	puts request.path
end

after '/*' do
	puts 'Completed Route Log:'
	puts response.body
	puts response.status
end