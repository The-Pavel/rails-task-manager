Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #READ
  get "tasks", to: "tasks#index"

  #CREATE
  get "tasks/new", to: "tasks#new"

  #READ ONE
  get "tasks/:id", to: "tasks#show", as: 'show'

  post "tasks", to: "tasks#create"
  #UPDATE
  get "tasks/:id/edit", to: "tasks#edit", as: 'task'

  patch "tasks/:id/edit", to: "tasks#update"

  #DESTROY
  delete "tasks/:id", to: "tasks#destroy", as: 'destroy'

  root to: "tasks#index"

  # resources :tasks

end
