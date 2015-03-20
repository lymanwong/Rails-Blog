class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  rescue_from Timeout::Error, with: :handle_timeout

  protect_from_forgery with: :exception
  protected
  def handle_timeout
    render "shared/timeout"
  end
end
