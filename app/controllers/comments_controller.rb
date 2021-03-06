class CommentsController < ApplicationController

  before_filter :authenticate_user!

  def new
    @user = User.find(params[:user_id])
    @comment =Comment.new
  end

  def create
    @user=User.find(params[:user_id])
    @comment = Comment.new (params[ :comment ])
    if @comment.save
      redirect_to user_comments_path, :notice => "Message #{@comment.message} has been posted"
    else
      render "new"
    end
  end

  def index
    @user = User.find(params[:user_id])
    @comment= @user.comments.order( 'created_at DESC' )
  end

  def show
    @comments =Comment.all
  end


end
