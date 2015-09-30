class Story < ActiveRecord::Base
  # commenting out Bootsy::Container to disable upload prompt in form
	# include Bootsy::Container
  belongs_to :value
  validates :text, presence: true
end
