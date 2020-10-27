Rails.application.routes.draw do
	get "players" => "players#index"
	get "players/new" => "players#new"
	post "players" => "players#create"
	get "players/:id/edit" => "players#edit"
  	patch "players/:id" => "players#update"
  	get "players/:id" => "players#show"
  	delete "players/:id" => "players#destroy"
end
