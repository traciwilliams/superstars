class SuperstarController < ApplicationController
	get '/' do 
		{:message => 'all items soon'}.to_json
		
	end
		
	get '/fab' do
	 #teach you how to rule the databse
	 #use activerecord because it is awesome
	 #create
	 @christopher = Superstar.new #making a new class
	 @christopher.talent = 'Socialiate'
	 @christopher.name = "Christopher McAwesome"
	 @christopher.outfit = 'blue sweater'
	 @christopher.save
	 @christopher.to_json
	 #crud
	
	 #delete
	 #update
	 #read



	end	


end
