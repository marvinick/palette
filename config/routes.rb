Palette2::Application.routes.draw do

  root to: 'employees#index'

  resources :employees
  resources :schedules

end
