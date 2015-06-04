class ContextsController < ApplicationController

  def create
    @context = Context.new(params[:context])
    @context.save

    render :json => @context
  end

end
