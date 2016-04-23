Rails.application.routes.draw do


#main homepage route
root 'homepage#index'
	



  devise_for :users, controllers: {
        sessions: 'user/sessions',
        #registrations: 'user/registrations'
      }


 #resources :foods, only: [:index, :create]

 # #--------Routes for food-----------#
  get 'foods/index'		 => 'foods#index'
 get 'foods/new'		=> 'foods#new'
  post 'foods/create'	=> 'foods#create'
  patch 'foods/update'	=> 'foods#update'
  get 'foods/show'		=> 'foods#show'
  get 'foods/edit'		=> 'foods#edit'
  get 'foods/delete'		=> 'foods#destroy'
  get 'foods/create'		=> 'foods#create'



 #--------Routes for Restaurant-----------#
# get 'restaurants/index' 			=> 'restaurant#index'
# get 'restaurants/new' 				=> 'restaurant#new'
# post 'restaurants/create'			=> 'restaurant#create'
# patch 'restaurants/update'			=> 'restaurant#update'
# get 'restaurants/show'		=> 'restaurant#show'
# get 'restaurants/edit'		=> 'restaurant#edit'
# get 'restaurants/delete'		=> 'restaurant#destroy'
# get 'restaurants/create'		=> 'restaurant#create'
# get 'restaurants/:id'			=> 'restaurants#index'

end
