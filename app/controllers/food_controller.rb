class FoodController < ApplicationController

	def index
		@food = Food.find(:id)
	end

	def show
		
	end

	def create
		
	end

	def update
	end

	def destroy

	end


	private:

		def food_params
			
		end
end

