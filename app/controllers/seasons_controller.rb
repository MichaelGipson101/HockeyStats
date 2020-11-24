class SeasonsController < ApplicationController
	def index
		@seasons = Season.all
	end
	def show
		@players = Season.find(params[:id]).players
		@maxpoints = @players.maximum(:goals) + @players.maximum(:assists)
		@minpoints = @players.minimum(:goals) + @players.minimum(:assists)
	end
	def create
		season = Season.new(season_params)
		if season.save
			redirect_to "/seasons"
		else
			flash[:errors] = season.errors.full_messages
			redirect_to "/seasons/new"
		end
	end
	def edit
		@season = Season.find(params[:id])
	end
	def update
		season = Season.find(params[:id])
		if season.update(season_params)
			redirect_to "/season"
		else
			flash[:errors] = season.errors.full_messages
			redirect_to "/season/#{season.id}/edit"
		end
	end	
	private
	def season_params
		params.require(:season).permit(:season)
	end
end
