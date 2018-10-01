Rails.application.routes.draw do
  root 'home#index'
  get 'home/index', to: 'home#index'
  get 'home/about', to: 'home#about'

  get 'posts/index', to:'posts#index'
  post 'posts', to:'posts#create'
end
