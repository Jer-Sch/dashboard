Rails.application.routes.draw do
  root 'application#index'
  get  '/login',     to: 'sessions#new'
  post '/login',     to: 'sessions#create'
  get '/logout',     to: 'sessions#destroy'
  resources 'applications'
end
