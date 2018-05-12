Rails.application.routes.draw do
  get 'sessions/new'

  #get 'stock/index'
  #get 'blogs/index'
  get 'blogs', to:'blogs#index'
  get 'stocks', to:'stocks#index'
  root :to => 'blogs#top'
  resources :blogs do
    collection do
      post:confirm
    end
  end
  resources :users, only: [:new, :create, :show]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :favorites, only: [:create, :destroy]

end
