class User < ApplicationRecord
	has_many :reservations, through: :foods
end
