class LandingController < ApplicationController

  def home
    @title = 'QPi Education | STEM Professional Development'
    redirect_to personal_home_path if user_signed_in?
  end

  def beta_home

  end

  def about
    @title = 'About'
  end

  def contact
    @title = 'Contact'
  end

  def logged_in_home
    # binding.pry
    if !user_signed_in?
      redirect_to root_path
    end
  end

end