Rails.application.routes.draw do
  # root 'proposals#index'
  root 'sessions#new'

  resources :proposals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  # resources :sessions, except: [:index, :show]
  resource :sessions, except: [:index, :show]
  # get  '/sessions/new'
  # post '/sessions'       
  # delete '/sessions/'
  # post   '/sessions': 'sessions#create'
  # get    '/sessions/new': 'sessions#new'
  # delete '/sessions': 'sessions#destroy'
end
