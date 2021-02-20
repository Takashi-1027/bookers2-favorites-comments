Rails.application.routes.draw do
  get 'users/show'
  #devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  #resources :books, only: [:new, :create, :index, :show, :destroy ,:edit, :update]
  #resources :users, only: [:show, :edit, :update, :index]


  #get 'users/edit'
  #get 'users/index'
  #get 'users/show'
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
  #get 'homes/about'
  #get 'homes/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
