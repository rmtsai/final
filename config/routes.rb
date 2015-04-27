Rails.application.routes.draw do
  get '/doctors', to: 'doctors#index'
  get '/doctors/new', to: 'doctors#new'
  post '/doctors', to: 'doctors#create'
  get '/doctors/:id', to: 'doctors#show'
  get '/doctors/:id/edit', to: 'doctors#edit'
  patch '/doctors/:id', to: 'doctors#update'
  delete '/doctors/:id', to: 'doctors#destroy'
end
