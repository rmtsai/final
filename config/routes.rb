Rails.application.routes.draw do
	resources :users
	resources :doctors
	resources :home
	resources :sessions
	resources :messages
	resources :patients

get "/logout", to: "sessions#destroy"
end
