Rails.application.routes.draw do

	  root :to => "users#index" 

resources :users
 # get 'welcome/index'
  #get 'welcome/create'
   

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
