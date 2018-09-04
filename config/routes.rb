Rails.application.routes.draw do

	root 'home#index'

	devise_for :users, path: 'utilisateur'

	get 'home/profil', 'home#profil'



 
end
