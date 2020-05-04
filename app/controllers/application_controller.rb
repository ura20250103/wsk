class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource) 
       user_path(resource)
  end

  def after_sign_out_path_for(resource)
       homes_top_path 
  end

  protected

  def configure_permitted_parameters
    added_attrs = [ :email, :user_name, :user_kana_name, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
