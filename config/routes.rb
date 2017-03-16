Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
  resources :comments
  end
  #above, comments is a sub-resource of articles
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end
