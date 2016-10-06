Rails.application.routes.draw do
  root 'sessions#new'
  resources :proposals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions, except: [:index, :show]
end
