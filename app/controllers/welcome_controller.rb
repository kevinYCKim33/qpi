class WelcomeController < ApplicationController

  def home
  end

  def logged_in_home
    binding.pry
    if !user_signed_in?
      redirect_to root_path
    end
  end

end
