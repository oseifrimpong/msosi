class FoodController < ApplicationController

	def index
		@food = Food.all
	end

	def new
		@food = Food.new
	end

	def show
		@food = Food.find(params[:id])
	end

	def create
		@food = Food.new(food_params)
		if @food.save
			redirect_to :action => 'index'
		else
			#render :action => 'new'
		end
	end

	def edit
		@food = Food.find(params[:id])
	end

	def update
		@food = Food.find(params[:id])

		if @food.update_attributes(food_params)
			redirect_to :action => 'show', :id => @food
		else
			render :action => 'edit'
		end

	end

	def destroy
		Food.find(params[:id]).destroy
		redirect_to :action => 'index'
	end


	private

		def food_params
			params.permit(:name, :description, :image, :price, :active, :cuisine)
		end
end

