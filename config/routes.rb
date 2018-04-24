Rails.application.routes.draw do
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
end
