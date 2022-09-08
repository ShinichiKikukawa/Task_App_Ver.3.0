class TasksController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @task = Task.new
    
  end

  def index
   @user = User.find(params[:user_id])
   @tasks = @user.tasks
  end

  def edit
  end
end