Rails.application.routes.draw do
	  root :to => "welcome#index" 

 # get 'welcome/index'
  #get 'welcome/create'
   resources :welcome
   get 'new_page', to: 'welcome#new_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end