class Season < ApplicationRecord
	has_many :appearances, dependent: :destroy
	has_many :players, through: :appearances
end
