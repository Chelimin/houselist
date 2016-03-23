class PeriodController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    period[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    period[:user_id] = nil
    redirect_to root_path
  end
end
