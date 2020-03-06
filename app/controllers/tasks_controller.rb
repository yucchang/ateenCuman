class TasksController < ApplicationController
  before_action :find_task, except: [:index, :new, :create]

  def index 
    @tasks = Task.incomplete
  end 

  def show
  end 

  def new
    @task = Task.new 
  end 

  def create 
    @task = Task.new(task_params)
  

    if @task.save
      redirect_to root_path, notice: 'Task created.'
    else 
      render :new 
    end
  end 

  def edit 
  end 

  def update
    if @task.update(task_params)
      redirect_to root_path, notice: 'Task updated.'
    else 
      render :edit
    end 
  end 

  def destroy
    @task.delete if @task 
    redirect_to root_path, notice: 'Task deleted.'
  end 

  private 
  def find_task 
    @task = Task.find(params[:id])
  end 

  def task_params
    params.require(:task).permit(:title,
                                 :content,
                                 :beginning_at,
                                 :due_at,
                                 :priority,
                                 :status)
  end 
end 