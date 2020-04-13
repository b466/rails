Rails.application.routes.draw do
  root 'home#top'

  get 'home/about', to: 'home#about'
  devise_for :users
  resources :books, only: [:new, :create, :show, :index, :destroy, :edit, :update] do
end
  resources :users,only: [:show,:index,:edit,:update]
  
  
end