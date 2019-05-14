class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    # create an empty object in memory for form to fill out later
    @task = Task.new
  end

  def create
    @task = Task.create(tasks_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_params)
    redirect_to tasks_path
  end

  def delete
    @task = Task.find(params[:id])
    @task.delete
    redirect_to tasks_path
  end

  private

  # for security reasons we need to define which parameters a created or updated task can take
  # require requires the model tasks
  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
