Rails.application.routes.draw do

  
	root 'home#new'

	devise_for :users, path: 'utilisateur'

	resources :users
<<<<<<< HEAD
	resources :aircraft
	post '/trip', to: 'aircraft#create'
	get "/aircrafts", to: 'aircraft#index'
	
	 
=======

>>>>>>> 1545fa6121038e8a7bd043929cec6bb5ae2ef76e
end
