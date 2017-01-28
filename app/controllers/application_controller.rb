class ApplicationController < ActionController::Base
  include ApplicationHelper

  # protect_from_forgery with: :exception
  before_filter :store_current_location, :unless => :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  private #for devise

  def store_current_location
    store_location_for(:user, request.url)
  end

  def after_sign_out_path_for(resource)
    request.referrer || root_path
  end
  
  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end
end
