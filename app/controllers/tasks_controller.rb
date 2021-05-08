class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if params[:back]
      render :new
    else
      if @task.save
        redirect_to tasks_path, notice: "タスクを登録しました。"
      else
        render :new
      end
    end
  end

  private
  def task_params
    params.require(:task).permit(:title, :detail)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
