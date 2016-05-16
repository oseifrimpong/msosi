class Food < ActiveRecord::Base
	belongs_to :restaurants

	#scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])

end
