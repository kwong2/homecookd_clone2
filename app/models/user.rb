class User < ApplicationRecord
	has_many :reservations, through: :foods
	has_many :foods

	before_save { self.email = email.downcase }
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }

	validates :email, presence: true, length: { maximum: 255 },
          	  uniqueness: { case_sensitive: false }

    validates :username, presence: true, length: { maximum: 255 },
          	  uniqueness: { case_sensitive: false }
	has_secure_password
	# validates :password, presence: true, length: { maximum: 50 }, allow_nil: true
end
