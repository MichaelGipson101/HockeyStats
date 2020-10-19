class Player < ApplicationRecord
	validates :first_name, :last_name, :season, :goals, :assists, presence: true
end
