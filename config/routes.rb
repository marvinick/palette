Palette::Application.routes.draw do

  resources :schedules

  resources :employees

  # You can have the root of your site routed with "root"
  root 'schedules#index'

end
