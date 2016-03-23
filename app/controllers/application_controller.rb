class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
protect_from_forgery with: :exception

helper_method :current_user
# very important!!! For below 2 methods to be accessible in views, not just the controller

def current_user
    @current_user ||= User.find_by(id: session[:user_id]) unless session[:user_id].blank? || User.find_by(id: session[:user_id]).blank?
    #won't set user unless there is a session id or a user id

    # if @current_user.blank? && !session[:user_id].blank?
    #   @current_user = User.find(session[:user_id])
    # end
    #
    #   return @current_user
end

  def logged_in?
    if current_user.blank?
      false
    else
      true
    end
  end

  def restrict_access
    cookies[:redirect]=request.original_url
    unless logged_in?
      flash[:error] = "You must login!"
      redirect_to login_url
    end
  end

end
