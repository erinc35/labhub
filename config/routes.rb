Rails.application.routes.draw do
  resources :proposals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions, except: [:index, :show]
end
