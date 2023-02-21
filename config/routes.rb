Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'tasks/new', to: 'tasks#new'
  get 'tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
