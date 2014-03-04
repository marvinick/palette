Palette2::Application.routes.draw do

  root to: 'posts#index'

  resources :employees
  resources :schedules
  resources :posts do
    collection { post :sort }
  end
  resources :messages

end
