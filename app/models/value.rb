class Value < ActiveRecord::Base
	has_many :stories, -> { order(:created_at => :desc) }
  attachment :image
end
