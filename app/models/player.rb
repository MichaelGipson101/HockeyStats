class Player < ApplicationRecord
	has_many :appearances, dependent: :destroy
	has_many :seasons, through: :appearances
	validates :first_name, :last_name, :season, :goals, :assists, :fnln, presence: true
end
