class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new #affiche le formulaire
    @task = Task.new
  end

  def create #capter la requete

    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit #affiche l'edition
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def task_params
      params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end


end
