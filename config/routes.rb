Rails.application.routes.draw do

	root 'home#index'

	devise_for :users, path: 'utilisateur'
	resources :charges, only: [:new, :create]

	resources :users
	resources :aircraft

	post "/recherche-de-vol", to: "aircraft#search_results", as: :search_results
	get "/mon-vol/:id", to: "aircraft#trip", as: :trip

	get "/aircrafts", to: 'aircraft#index'
	get "/aircraft/:id", to: 'aircraft#show'
	get "/planes", to: 'planes#index'
<<<<<<< HEAD

=======
>>>>>>> 73cd61ffcec97cae7535268b8ecbf348d09fe9b1
end
