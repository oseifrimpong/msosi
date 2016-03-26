Rails.application.routes.draw do


#main homepage route
root 'homepage#index'
	



  devise_for :users, controllers: {
        sessions: 'user/sessions'
      }



	#routes for users
	#resources :users, :only => [:show]

end
