Palette2::Application.routes.draw do

  root to: 'posts#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :employees
  resources :schedules
  resources :posts do
    collection { post :sort }
  end
  resources :messages

end
