class ApplicationsController < ApplicationController

  def new
  @job = Job.find(params[:job_id])
  @application = Application.new
end

 def create
  @job = Job.find(params[:job_id])

  @application = @job.applications.build(application_params)

  if @application.save
    redirect_to job_path(@job), notice: "Application submitted successfully"
  else
    render :new, status: :unprocessable_entity
  end
end

  private

  def application_params
    params.require(:application).permit(:name, :email, :resume)
  end

end