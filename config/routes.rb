Rails.application.routes.draw do

  resources :messages
	root 'home#index'

	devise_for :users, path: 'utilisateur'
	resources :charges, only: [:new, :create, :confirm_page]

	resources :users
	resources :aircraft

	post "/recherche-de-vol", to: "aircraft#search_results", as: :search_results
	get "/mon-vol/:id", to: "aircraft#trip", as: :trip

	get "/aircrafts", to: 'aircraft#index'
	get "/aircraft/:id", to: 'aircraft#show'
	get "/planes", to: 'planes#index'
	get "/confirm_page", to: 'charges#confirm_page'
	get "message_admin", to: 'messages#index_admin'

end
