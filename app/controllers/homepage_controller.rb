class HomepageController < ApplicationController
	layout 'home_layout'

	def index
		 @search = Food.search(params[:q])
    	@food = @search.result
	end
end
