Rails.application.routes.draw do


#main homepage route
root 'homepage#index'
	



  devise_for :users, controllers: {
        sessions: 'user/sessions'
      }



<<<<<<< HEAD
	#routes for users
	#resources :users, :only => [:show]
=======
 resource :foods

>>>>>>> food

end
