Rails.application.routes.draw do
  # root 'proposals#index'
  root 'sessions#new'

  resources :proposals do
    resources :comments

    resources :experiments
  end

  resources :experiments do
    
    resources :comments

    resources :components do
      resources :comments
    end
  end

  # resources :experiments do
  #   resources :components do
  #     resources :comments
  #   end
  # end

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
