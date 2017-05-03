Rails.application.routes.draw do

	  root :to => "users#index" 
get '/users/new_page', to: 'users#new_page'
   
resources :users
 # get 'welcome/index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
