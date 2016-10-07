Rails.application.routes.draw do
  # root 'proposals#index'
  root 'sessions#new'
  resources :proposals
  resources :users
  resource :sessions, except: [:index, :show]

end
