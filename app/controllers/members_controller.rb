class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def show

  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      redirect_to members_path, :notice => "#{@member.comments} has been posted by #{@member.name}"
    else
      render "new"
    end
  end

end
