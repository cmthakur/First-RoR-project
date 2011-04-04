class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to new_project_task_group_path(@project), :notice => "Project #{@project.name.upcase} has been initialized"
    else
      render "new"
    end
  end

  def index
    @projects=Project.all
    if @projects == nil
      flash[:alert] = "No projects found "
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to projects_path, :notice => "#{@project.name.upcase} was successfully updated!!"
    else
      render "edit"
    end
  end

end
