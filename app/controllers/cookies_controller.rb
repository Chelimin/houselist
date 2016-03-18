class CookiesController < ApplicationController

before_action :restrict_access

  def example_1
    cookies[:user_name] = "rachel"
  end

  def example_2
    cookies[:keep_for_a_while] = {
        value: "not so secret message",
        expires: 1.year.from_now
        }
  end

  def example_3
      puts cookies.inspect
      cookies.delete :user_name
  end
end
