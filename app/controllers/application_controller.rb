class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_dark_mode

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :current_password])
  end

  def after_sign_in_path_for(resource)
    appointments_path
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  def toggle_dark_mode
    session[:dark_mode] = !session[:dark_mode]
    render json: { dark_mode: session[:dark_mode] }
  end

  private

  def set_dark_mode
    @dark_mode = session[:dark_mode]
  end
end