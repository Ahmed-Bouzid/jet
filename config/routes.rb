Rails.application.routes.draw do

	root 'home#index'

	devise_for :user
	
	get 'home/profil', 'home#profil'



 
end
