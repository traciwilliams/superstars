class SuperstarController < ApplicationController
	#A RESTful controller
	# get all
	# get by id
	# create
	# update by id
	# delete by id

	get '/' do 
	   #get all
	   Superstar.all.to_json #yourmodelname.all.to_jason
	end
	
	get '/:id' do
		#get by id
		@id = params[:id]
		Superstar.find(@id).to_json #model.find.argumentofid.tojson
		#in the browser do http://localhost:9292/api/superstars/2 ---> the 2 is the id
	end

	post '/' do
		#create 
		@name = params[:name]
		@talent = params[:talent]
		@outfit = params[:outfit]

		@model = Superstar.new
		@model.name = @name
		@model.talent = @talent
		@model.outfit = @outfit
		@model.save


		#place a breakpoint in ruby!
		#binding.pry <----this is a breakpoint
		#^ the code stops here
		@model.to_json
		#goto postman
	end

	patch '/:id' do
		#update
		@id = params[:id]
		@name = params[:name]
		@talent = params[:talent]
		@outfit = params[:outfit]

		@model = Superstar.find(@id)
		@model.name = @name
		@model.talent = @talent
		@model.outfit = @outfit
		@model.save
	end

	delete '/:id' do
		#delete
		@id = params[:id]
		@model = Superstar.find(@id)
		@model.destroy
		{:message =>"Item of id" + @id + "was removed."}.to_json
	end

	#^^called a RESTful controller
		
	# get '/fab' do
	#  #teach you how to rule the databse
	#  #use activerecord because it is awesome
	#  #create
	#  @christopher = Superstar.new #making a new class
	#  @christopher.talent = 'Socialiate'
	#  @christopher.name = "Christopher McAwesome"
	#  @christopher.outfit = 'blue sweater'
	#  @christopher.save
	#  @christopher.to_json
	#  #crud
	
	#  #delete
	#  #update
	#  #read
	# end	


end
