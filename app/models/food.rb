class Food < ApplicationRecord
	belongs_to :host, foreign_key: :host_id, class_name: 'User'
	has_many :reservations
end
