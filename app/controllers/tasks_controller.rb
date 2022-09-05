class TasksController < ApplicationController
  def new
  end

  def index
   @user = User.find(params[:user_id])
   @tasks = @user.tasks
  end

  def edit
  end
end