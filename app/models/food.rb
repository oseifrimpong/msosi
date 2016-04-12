class Food < ActiveRecord::Base
	
	#Associations
	belongs_to :restaurant

	validates_presence_of :name
	validates_numericality_of :price, :message => "Enter a numeric value"
	
end
