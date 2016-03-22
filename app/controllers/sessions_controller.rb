class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email (params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if cookies[:redirect].blank?
        redirect_to root_url
      else
        redirect_to cookies[:redirect], notice: "Logged in"
      end
    else
        flash.now.alert = "Invalid login details"
        render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to posts_url, notice: "Logged out!"
  end
end
