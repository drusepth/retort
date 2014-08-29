class ContextsController < ApplicationController

  def create
    @context = Context.new(params[:context])
    @context.save
  end

end
