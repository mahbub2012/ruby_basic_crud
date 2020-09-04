Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get :welcome, to: 'welcome#index'
  get "get_name/:name", to: 'welcome#get_name'

  get :books, to: 'books#index'
  get 'books/new', to: 'books#new'
  post 'books/create', to: 'books#create'
  get 'books/:id', to: 'books#show', as: 'books_show'
  get 'books/:id/edit', to: 'books#edit', as: 'books_edit'
  put 'books/:id', to: 'books#update', as: 'books_update'
  delete 'books/:id', to: 'books#destroy', as: 'books_delete'
end
