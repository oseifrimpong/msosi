class RestaurantController < ApplicationController

	def index
		@restaurant = Restaurant.find(params[:id])
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
			@restaurant.save
	end

	def update
		
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def destroy
		Restaurant.find(params[:id]).destroy
	end

	private

		def restaurant_params
			params.require(:restaurant).permit(:name, :phone, :address, :email, :image)
		end
	end
end
