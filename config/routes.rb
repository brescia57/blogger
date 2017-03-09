Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
  	resources :comments
  end
  #above, comments is a sub-resource of articles
  resources :tags
  
end
