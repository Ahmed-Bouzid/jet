Rails.application.routes.draw do


	root 'home#index'

	devise_for :users, path: 'utilisateur'
	resources :users
	resources :aircraft

	post '/trip', to: 'aircraft#create'
	get "/aircrafts", to: 'aircraft#index'
	get "/aircraft/:id", to: 'aircraft#show'
	get "/planes", to: 'planes#index'
	get "/paiement", to: 'charges#new'

	resources:charges, only: [:new, :create]


	

end
