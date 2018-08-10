class LandingController < ApplicationController

  def home
    @title = 'QPi Education | STEM Professional Development'
    redirect_to personal_home_path if user_signed_in?
  end

  def about
    @title = 'About'
  end

  def contact
    @title = 'Contact'
  end

  def workshops
    @title = 'Workshops'
  end

end
