class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def user_signed_in?
    current_user.present?
  end
  helper_method :user_signed_in?

  def authenticate_user
    unless user_signed_in?
      redirect_to new_session_path, alert: "Please sign in!"
    end
  end

end
