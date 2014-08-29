module ContextRequired
  extend ActiveSupport::Concern

  included do
    before_action :require_context
  end

  protected

  def access_denied
    throw "Access Denied"
  end

  def require_context
    access_denied unless params && params[:token]
    @context = Context.find_by_token(params[:token])
    access_denied unless @context
  end
end