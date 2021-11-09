class TasksController < ApplicationController

  ## CREATE ##

  # Create a task 1/2: get the creation form
  def new
    @task = Task.new
  end
  # Create a task 2/2: post the parameters to create a new restaurant

  def create
    # Initiate a task with the data given in creation forms
    @task = Task.new(task_params)
    # Save this task in the DB
    @task.save
    # Once the task is created and saved, go to the task show page
    redirect_to task_path(@task)
  end

  ## READ ##

  # Read all tasks
  def index
    @tasks = Task.all
  end

  # Read one specific task (based on its id)
  def show
    @task = Task.find(params[:id])
  end

  ## UPDATE ##

  # 1/2 GET the task update form
  def edit
    @task = Task.find(params[:id])
  end

  # 2/2: PATCH the parameters to update an existing restaurant
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  ## DELETE ##
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
