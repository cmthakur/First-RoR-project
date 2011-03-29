class TasksController < ApplicationController
  def new
    @project=Project.find(params[:project_id])
    @task_group = TaskGroup.find(params[:task_group_id])
    @task=Task.new
  end

  def create
     @task = Task.new(params[:task])
     if @task.save
       redirect_to projects_path, :notice => "#{@task.name} has been initialized"
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
