class SampleController < ApplicationController

  def slow
    job = AsyncRequest::Job.create_and_enqueue(MyJob, params[:id])
    render json: { token: job.token, url: async_request.job_url }, status: :accepted
  end

  def fast
    render json: { message: 'fast' }
  end
end
