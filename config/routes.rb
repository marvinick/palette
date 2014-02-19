Palette2::Application.routes.draw do

  root to: 'posts#index'

  resources :employees
  resources :schedules
  resources :posts

end
