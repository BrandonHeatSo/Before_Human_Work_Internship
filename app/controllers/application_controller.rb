class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  before_action :config_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    users_dash_boards_path
  end

  protected

  def config_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email])
  end

end
