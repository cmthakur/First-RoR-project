class TasksController < ApplicationController

  before_filter :authenticate_user!

  def new
    @project=Project.find(params[:project_id])
    @task_group = TaskGroup.find(params[:task_group_id])
    @task=Task.new
  end

  def create
    @user= current_user
    @project=Project.find(params[:project_id])
    @task_group = TaskGroup.find(params[:task_group_id])
    @task = Task.new(params[:task])
    if @task.save
      UserMailer.welcome(@user,@task).deliver
      redirect_to projects_path, :notice => "Task #{@task.name} has been initialized.#{@user.name} check your mail for details!!"
    else
      render "new"
    end
  end

  def edit
    @project=Project.find(params[:project_id])
    @task_group = TaskGroup.find(params[:task_group_id])
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to projects_path, :notice => "#{@task.name.upcase} was successfully updated!!"
    else
      render "edit"
    end
  end

end
