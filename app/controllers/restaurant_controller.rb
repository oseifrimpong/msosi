class RestaurantController < ApplicationController

	def index
		@restaurant = Restaurant.find(params[:id])
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		#Restaurant.create(restaurant_params)
		@restaurant = Restaurant.new(restaurant_params)
		 if @restaurant.save
			flash[:notice] = 'Profile was successfully created.'
			redirect_to :action => 'index'
		  else
		  	flash[:notice] = 'Error.  Something went wrong.'
		  	redirect_to :action => 'new'
		 end
	end

	def update
		@restaurant = Restaurant.find(params[:id])

		if @restaurant.update_attributes(restaurant_params)
			redirect_to :action => 'show', :id => @food
		else
			render :action => 'edit'
		end

	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def destroy
		Restaurant.find(params[:id]).destroy
	end

	private
		def restaurant_params
			params.fetch(:restaurant, {}).permit(:name, :phone, :address, :email, :image)
			#params.require(:restaurant).permit(:name, :phone, :address, :email, :image)
		end
end
