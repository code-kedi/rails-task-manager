Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "tasks", to: "tasks#index", as: :tasks # => tasks_path
  # Send a post request on submission to create record in database
  # post "tasks", to: "tasks#create"
  # User needs form to be able to input data about new task
  # get "tasks/new", to: "tasks#new", as: :new_task
  # get "tasks/:id", to: "tasks#show", as: :task # => task_path(2)
  # patch "tasks/:id", to: "tasks#update"
  # delete "tasks/:id", to: "tasks#destroy"
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  Rails.application.routes.draw do
    resources :tasks
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
