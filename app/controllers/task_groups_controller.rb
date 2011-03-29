class TaskGroupsController < ApplicationController
def new
  @project=Project.find(params[:project_id])
  @task_group = TaskGroup.new
end

def create
    @task_group = TaskGroup.new(params[:task_group])
   if @task_group.save
     redirect_to new_project_task_group_task_path(@project,@task_group), :notice => "#{@task_group.name} has been initialized"
   else
     render "new"
   end
 end

end
