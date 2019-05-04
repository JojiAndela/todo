Rails.application.routes.draw do
  resources :todos
  devise_for :users
  root to: 'todos#index'

  # post 'todos/:id/complete', to: 'todos#complete', as: :complete_todo
  # post 'todos/:id/uncomplete', to: 'todos#uncomplete', as: :uncomplete_todo
  get 'todos/:id/complete', to: 'todos#complete', as: :complete_todo
  get 'todos/:id/uncomplete', to: 'todos#uncomplete', as: :uncomplete_todo
end
