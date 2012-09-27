class TasksController < ApplicationController
  respond_to :json, :html

  def index
    @tasks = Task.all
    respond_with(@tasks)
  end

  def show
    @task = Task.find(params[:id])
    respond_with(@task)
  end


  def new

  end


  def create
    @task = Task.new(params[:task])
    @task.save
    # Note here that rails will respond with an unprocessable entity (422)
    # it doesn't pass validation
    respond_with(@task)
  end


  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
    respond_with(:nothing, status: 204)
  end


  def destroy
    # ideally, you want to check first that the given task exists
    Task.find(params[:id]).destroy
    respond_with(:nothing, status: 204)
  end

end