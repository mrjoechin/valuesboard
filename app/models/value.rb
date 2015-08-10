class Value < ActiveRecord::Base
	has_many :stories
  attachment :image
end
