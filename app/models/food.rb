class Food < ApplicationRecord
	belongs_to :user, optional: true
	has_many :reservations
	mount_uploader :picture, PictureUploader
	validate  :picture_size

	private
	 # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end


end
