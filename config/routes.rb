Rails.application.routes.draw do
  devise_for :users
  get 'blog/index'
  root 'blog#index'

  resources :posts do
    resources :comments
  end
  
  resources :charges
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
