Rails.application.routes.draw do
	get "players" => "players#index"
	get "players/new" => "players#new"
	post "players" => "players#create"
	get "players/:id/edit" => "players#edit"
  	patch "players/:id" => "players#update"
  	get "players/:id" => "players#show"
  	delete "players/:id" => "players#destroy"
  	get "seasons" => "seasons#index"
  	get "seasons/new" => "seasons#new"
	post "seasons" => "seasons#create"
	get "seasons/:id/edit" => "seasons#edit"
  	patch "seasons/:id" => "seasons#update"
  	get "seasons/:id" => "seasons#show"
  	get "appearances" => "appearances#index"
  	post "appearances" => "appearances#create"
  	
end
