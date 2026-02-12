class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :store_location, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, :occupation, :position])
  end

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  def after_sign_up_path_for(resource)
    user_path(resource)
  end
  
  private

  def store_location

  end
  
end
