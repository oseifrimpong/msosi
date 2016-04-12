class Food < ActiveRecord::Base

	#validates :name
	
	belongs_to :restaurant
end
