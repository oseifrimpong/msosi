class Restaurant < ActiveRecord::Base
	#Associations
	has_many :foods
end
