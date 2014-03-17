Palette2::Application.routes.draw do

  root to: 'posts#index'

  get '/register', to: 'employees#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :employees
  resources :posts do
    collection { post :sort }
  end
  resources :messages
  resources :recipes

end
