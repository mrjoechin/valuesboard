class Story < ActiveRecord::Base
	include Bootsy::Container
  belongs_to :value
end
