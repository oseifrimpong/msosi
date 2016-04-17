Rails.application.routes.draw do


#main homepage route
root 'homepage#index'
	



  devise_for :users, controllers: {
        sessions: 'user/sessions'
      }


 

 #--------Routes for food-----------#
 get 'foods/id'		 => 'food#index'
 get 'foods/new'		=> 'food#new'
 post 'foods/create'	=> 'food#create'
 patch 'foods/update'	=> 'food#update'
 get 'foods/show'		=> 'food#show'
 get 'foods/edit'		=> 'food#edit'
 get 'foods/delete'		=> 'food#destroy'
 get 'foods/create'		=> 'food#create'



 #--------Routes for Restaurant-----------#
get 'restaurants/index' 			=> 'restaurant#index'
get 'restaurants/new' 				=> 'restaurant#new'
post 'restaurants/create'			=> 'restaurant#create'
patch 'restaurants/update'			=> 'restaurant#update'
get 'restaurants/show'		=> 'restaurant#show'
get 'restaurants/edit'		=> 'restaurant#edit'
get 'restaurants/delete'		=> 'restaurant#destroy'
get 'restaurants/create'		=> 'restaurant#create'



end
