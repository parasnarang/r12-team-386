class ApplicationController < ActionController::Base
  protect_from_forgery

  def signed_in_user
    if current_user.nil?
      session[:return_to] = request.fullpath
      redirect_to root_path, notice: "Please sign in"
    end
  end

  #private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

end
