class AppearancesController < ApplicationController
	def search
	@parameter = params[:search]  
    @results = Player.all.where("lower(fnln) LIKE :search", search: @parameter)
	end
	def index
		@players = Player.all
		@seasons = Season.all
		return @players, @seasons
	end
	def create
		appearance = Appearance.new(appearance_params)
		if appearance.save
			redirect_to "/seasons"
		else
			flash[:errors] = appearance.errors.full_messages
			redirect_to "/appearances/new"
		end
	end
	private
	def appearance_params
		params.require(:appearance).permit(:player_id, :season_id)
	end
end
