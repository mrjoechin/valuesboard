class Value < ActiveRecord::Base
	has_many :stories

  mount_uploader :image, ImageUploader
end
