Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/articles', to: 'articles#index'
  # New Task
  get '/articles/new', to: 'articles#new'
  post '/articles', to: 'articles#create'
  # Edit
  get "/articles/:id/edit", to: 'articles#edit', as: :article_edit
  patch "/articles/:id", to: 'articles#update'
  # Details
  get '/articles/:id', to: 'articles#show', as: :article
  # Delete
  delete '/articles/:id', to: 'articles#destroy'

  # resources :articles
end
