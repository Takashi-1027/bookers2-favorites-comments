Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get 'users/show'


  resources :users    #, only: [:show, :edit, :update, :index]

  resources :books do  #, only: [:new, :create, :index, :show, :destroy ,:edit, :update]
    resource :favorites, only: [:create, :destroy]
    # resources :comments, only: [:create, :destroy]
  end
end
  #get 'users/edit'
  #get 'users/index'
  #get 'users/show'
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
  #get 'homes/about'
  #get 'homes/top'

  # get 'favorites/create'
  # get 'favorites/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
