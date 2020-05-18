Rails.application.routes.draw do
  root 'application#index'
  get  '/login',     to: 'sessions#new'
  post '/login',     to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'
  resources 'applications' do
    collection do
      post :sort
    end
  end
end
