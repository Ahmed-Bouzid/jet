Rails.application.routes.draw do

	root 'home#index'

	devise_for :users, path: 'utilisateur'

	resources :users

end
