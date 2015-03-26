class JobsController < ApplicationController
  before_action :find_job, only: [:show, :edit, :update, :destroy]
  def index
    @jobs = Job.all
  end

  def show
  end
  
  def edit
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to @job
    else
      render "New"
    end
  end

  def update
    @job = Job.find(params[:id])
    @job.update_attributes(job_params)
    redirect_to jobs_path
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end

  def find_job
    @job = Job.find(params[:id])
  end
end
