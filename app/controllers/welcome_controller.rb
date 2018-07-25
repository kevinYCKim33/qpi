class WelcomeController < ApplicationController

  def home
    # binding.pry
    redirect_to personal_home_path if user_signed_in?
  end

  def logged_in_home
    # binding.pry
    if !user_signed_in?
      redirect_to root_path
    end
  end

end
