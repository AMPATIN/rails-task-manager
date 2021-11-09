Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ### REMINDER state the creation routes (get and post) before the show route ###
  ### (otherwise the browser will not be able to find its path)

  ## CREATE ##

  # Create a task 1/2: GET the task creation form
  get 'tasks/new', to: 'tasks#new'
  # Create a task 2/2: GET the parameters to create a new restaurant
  post 'tasks', to: 'tasks#create'

  ## DELETE ##
  # Delete one specific task
  delete 'tasks/:id', to: 'tasks#destroy'

  ## READ ##

  # Read all tasks
  get 'tasks', to: 'tasks#index'
  # Read one specific task
  get 'tasks/:id', to: 'tasks#show', as: :task

  ## UPDATE ##

  # Update a task 1/2: GET the task update form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # Update a task 2/2: PATCH the parameters to update an existing restaurant
  patch 'tasks/:id', to: 'tasks#update'

end
