class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #include UrlHelper
  protect_from_forgery with: :exception
  #before_action :authenticate_model!
  helper_method :current_model

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || factories_path
  end

end
