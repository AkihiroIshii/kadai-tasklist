Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/create'

  root to: 'toppages#index' #ログイン機能追加のため、トップページをrootに変更
  #root to: 'tasks#index'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end