class AppearancesController < ApplicationController
	def search
	@parameter = params[:search]  
    @results = Player.all.where("lower(fnln) LIKE :search", search: @parameter)
  		
	end
end
