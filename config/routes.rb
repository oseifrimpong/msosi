Rails.application.routes.draw do


#main homepage route
root 'homepage#index'
	



  devise_for :users, controllers: {
        sessions: 'user/sessions'
      }



 

 #--------Routes for food-----------#
 get 'foods/index'		 => 'food#index'
 get 'foods/new'		=> 'food#new'
 post 'foods/create'	=> 'food#create'
 patch 'foods/update'	=> 'food#update'
 get 'foods/show'		=> 'food#show'
 get 'foods/edit'		=> 'food#edit'
 get 'foods/delete'		=> 'food#destroy'
 get 'foods/create'		=> 'food#create'
		
end
