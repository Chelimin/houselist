class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new (user_params)
    if @user.save
      # checks that the user has saved
        redirect_to login_path, notice: "You have been registered, please login."
      else
        render 'new'
        #vs redirect to blank form where user has to fill in all fields again
      end
  end

private

  def user_params
      params.require(:user).permit( :email, :password, :password_confirmation) if params[:user]
  end

end
