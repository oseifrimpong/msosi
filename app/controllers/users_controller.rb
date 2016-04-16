class UsersController < ApplicationController

	def show
		User.find(params[:id])
	end
end
