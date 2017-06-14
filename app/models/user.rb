class User < ApplicationRecord
	has_many :reservations, through: :foods
	has_many :foods
end
