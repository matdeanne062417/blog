Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :articles
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create', as: 'create_article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  patch 'articles/:id' => 'articles#update', as: 'update_article'
  get 'articles/:id/show' => 'articles#show', as: 'show_article'
  get 'articles/:id' => 'articles#delete', as: 'delete_article'
  
end
