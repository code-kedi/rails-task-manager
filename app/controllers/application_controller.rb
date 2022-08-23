class ApplicationController < ActionController::Base
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    # model (logic)
    @tasks = Task.all
    # render the view
  end

  def show
    id = params[:id]
  end

  def new
    @task = Task.new
  end

  def create
    # We need strong params to avoid maliscious users adding suspicious data (it's required)
    # We create an instance of a restaurant
    @task = Task.new(tasks_params)
    # We save it to our database
    @task.save
    # We redirect to the show page of the new task
    redirect_to task_path(@task.id)
  end

  def edit
  end

  def update
    @task.update(tasks_params)
    redirect_to task_path(@task.id)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
