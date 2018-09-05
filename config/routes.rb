Rails.application.routes.draw do

  
	root 'home#new'

	devise_for :users, path: 'utilisateur'

	resources :users
	resources :aircraft
	post '/trip', to: 'aircraft#create'
	get "/aircrafts", to: 'aircraft#index'
	
	 
end
