class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :allow_iframe_requests
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password, :password_confirmation, :name, :cover_photo, :avatar, :description) }
  end

end
