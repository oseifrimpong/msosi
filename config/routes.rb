Rails.application.routes.draw do

  #devise_for :users
#main homepage route
root 'homepage#index'
	

	#routes for users
	resources :users, :only => [:show]

end
