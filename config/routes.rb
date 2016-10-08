Rails.application.routes.draw do

  # root 'proposals#index'
  root 'sessions#new'

  resources :proposals do
    resources :comments

    resources :experiments

    resources :approvals
  end

  resources :experiments do

    resources :comments

    resources :components
  end

  resources :components do
    resources :comments
  end

  # resources :experiments do
  #   resources :components do
  #     resources :comments
  #   end
  # end

  resources :users
  resource :sessions, except: [:index, :show]

end
