Rails.application.routes.draw do

	root 'home#index'


	get 'home/profil', 'home#profil'
	devise_for :users



end
