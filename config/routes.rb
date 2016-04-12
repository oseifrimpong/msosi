Rails.application.routes.draw do

  #devise_for :users
#main homepage route
root 'homepage#index'

 #resources :foods
 

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
