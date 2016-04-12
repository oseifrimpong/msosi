Rails.application.routes.draw do

  #devise_for :users
#main homepage route
root 'homepage#index'

 resource :foods


end
