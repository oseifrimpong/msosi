class FoodController < ApplicationController

	def index
		@food = Food.all
	end

	def new
		@food = Food.new(food_params)
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
			permit.require(:food)
		end
end

