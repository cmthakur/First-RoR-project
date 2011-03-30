class CommentsController < ApplicationController

 before_filter :authenticate_user!

  def new
    @user = User.find(params[:user_id])
    @comment = @user.comments.new
  end
  def create
    @user=User.find(params[:user_id])
     @comment = Comment.new(params[:comment])
     if @comment.save
       redirect_to projects_path, :notice => "#{@comment.message} has been posted"
     else
       render "new"
     end
  end

end
