class ResponsesController < ApplicationController
  include ContextRequired

  def create
    @response = Response.new(params[:response])
    @response.save
  end

  def show
    render :json => Response.find(params[:id])
  end

end
