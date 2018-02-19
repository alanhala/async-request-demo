class SampleController < ApplicationController

  def slow
    puts "llegue #{params[:id]}"
    sleep(15.seconds)
    render json: { message: 'slow' }
    puts "me fui #{params[:id]}"
  end

  def fast
    render json: { message: 'fast' }
  end
end
