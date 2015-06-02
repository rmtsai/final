Rails.application.routes.draw do
	resources :users
	resources :doctors
	resources :home
	resources :sessions
end
