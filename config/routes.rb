Rails.application.routes.draw do

  root 'posts#index'
  devise_for :users
  resources :posts, shallow: true do
    resources :comments, only: [:new, :create]
    resources :digs, only: :create
  end

end
